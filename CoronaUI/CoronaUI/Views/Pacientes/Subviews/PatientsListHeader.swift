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
                        Text("Nome")
                            .padding(.horizontal, 36)
                            .frame(alignment: .leading)
                    }
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text("Idade")
                            .frame(width: 50, alignment: .leading)
                            .padding(.trailing, 70)
                        Text("Bairro")
                            .lineLimit(1)
                            .frame(width: 200, alignment: .leading)
                        Text("Telefone")
                            .frame(width: 160, alignment: .leading)
                            .padding(.trailing, 44)
                        Text("Início sintomas")
                            .frame(width: 130, alignment: .leading)
                            .padding(.trailing, 36)
                        
                    }
                }
                
            }
            Spacer()
            externalLine()
        }.frame(height: 51).font(.system(size: 20))
    }
}

struct PatientsListHeader_Previews: PreviewProvider {
    static var previews: some View {
        PatientsListHeader()
        .previewLayout(.fixed(width: 1147, height: 55))
    }
}
