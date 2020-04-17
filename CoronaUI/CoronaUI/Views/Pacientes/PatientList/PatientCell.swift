//
//  PacientCell.swift
//  CoronaUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 13/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
// ␀

import SwiftUI

struct PatientCell: View {
    
    let patient: Patient
    @State var selected = false
    
    fileprivate func unselectedBox() -> some View {
        return Rectangle()
            .fill(Color.white)
            .border(ApplicationColors.secondaryGray, width: 2)
            .frame(width: 22, height: 22)
            .cornerRadius(2)
            .padding(.horizontal, 22)
    }
    
    fileprivate func selectedBox() -> some View {
        return Rectangle()
            .fill(ApplicationColors.secondaryGray)
            .frame(width: 22, height: 22)
            .cornerRadius(2)
            .padding(.horizontal, 22)
    }
    
    var body: some View {
        ZStack {
            Color.white
            NavigationLink(destination: PacientesDetails()) {
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            if selected {
                                selectedBox()
                            } else {
                                unselectedBox()
                            }
                            Text(getIdString())
                            Text(patient.name)
                                .fontWeight(.bold)
                                .padding()
                                .frame(alignment: .leading)
                        }
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("\(patient.age)")
                                .frame(width: 30, alignment: .leading)
                                .padding(.trailing, 90)
                            Text(patient.district)
                                .lineLimit(1)
                                .frame(width: 200, alignment: .leading)
                            Text(getTelephone())
                                .foregroundColor(ApplicationColors.confirmationGreen)
                                .frame(width: 160, alignment: .leading)
                                .padding(.trailing, 44)
                            Text(getStringDate())
                                .frame(width: 120, alignment: .leading)
                                .padding(.trailing, 44)
                        }
                    }
                }
            }
        }.frame(height: 75).font(.system(size: 20))
        
    }
    
    func getTelephone() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .none
        let formattedNumber = numberFormatter.string(from: NSNumber(value: patient.telephone.number))
//        print("heyo \(formattedNumber ?? "nope...")")
        return "(\(patient.telephone.ddd)) \(formattedNumber ?? "\(patient.telephone.number)")"
    }
    
    func getStringDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: patient.firstSintoms)
    }
    
    func getIdString() -> String {
        switch patient.id {
        case 0 ..< 9:
            return "00\(patient.id + 1)"
        case 9 ..< 99:
            return "0\(patient.id + 1)"
        default:
            return "\(patient.id + 1)"
        }
    }
    
}

struct PacientCell_Previews: PreviewProvider {
    static var previews: some View {
        PatientCell(patient: allPatients[0])
            .previewLayout(.fixed(width: 1147, height: 75))
    }
}
