//
//  PacientCell.swift
//  CoronaUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 13/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

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
        HStack {
            
            VStack(alignment: .leading) {
                HStack {
                    if selected {
                        selectedBox()
                    } else {
                        unselectedBox()
                    }
                    Text(getIdString())
                        .font(.system(size: 20))
                    Text(patient.name)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding()
                        .frame(alignment: .leading)
                }
            }
            
            Spacer()
            
            VStack {
                HStack {
                    Text("\(patient.age)")
                        .font(.system(size: 20))
                        .padding(.horizontal, 44)
                    Text(patient.district)
                    .font(.system(size: 20))
                        .lineLimit(1)
                        .frame(width: 200, alignment: .leading)
                    Text("(\(patient.telephone.ddd)) \(patient.telephone.number)")
                    .font(.system(size: 20))
                        .foregroundColor(ApplicationColors.confirmationGreen)
                        .padding(.horizontal, 44)
                    Text(getStringDate())
                    .font(.system(size: 20))
                        .padding(.horizontal, 44)
                }
            }
            
        }
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

