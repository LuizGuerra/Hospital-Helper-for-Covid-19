//
//  PatientsListHeader.swift
//  CoronaUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 14/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct PatientsListHeader: View {
    fileprivate func externalLine() -> some View {
        return Rectangle()
            .fill(ApplicationColors.thirdGray)
            .frame(height: 1)
    }
    
    var body: some View {
        VStack {
            externalLine()
            Spacer()
            HStack {
                
                VStack(alignment: .leading) {
                    HStack {
                        Rectangle()
                            .fill(Color.white)
                            .border(ApplicationColors.secondaryGray, width: 2)
                            .frame(width: 22, height: 22)
                            .cornerRadius(2)
                            .padding(.horizontal, 22)
                        Text("n.")
                            .font(.system(size: 20))
                        Text("Nome")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(.horizontal, 36)
                            .frame(alignment: .leading)
                    }
                }
                
                Spacer()
                
                VStack {
                    HStack {
                        Text("Idade")
                            .font(.system(size: 20))
                            .padding(.horizontal, 44)
                        Text("Bairro")
                        .font(.system(size: 20))
                            .lineLimit(1)
                            .frame(width: 200, alignment: .leading)
                        Text("Tefelone")
                        .font(.system(size: 20))
                            .foregroundColor(ApplicationColors.confirmationGreen)
                            .padding(.horizontal, 44)
                        Text("Início sintomas")
                        .font(.system(size: 20))
                            .padding(.horizontal, 44)
                    }
                }
                
            }
            Spacer()
            externalLine()
        }.frame(height: 51)
    }
}

struct PatientsListHeader_Previews: PreviewProvider {
    static var previews: some View {
        PatientsListHeader()
        .previewLayout(.fixed(width: 1147, height: 51))
    }
}
