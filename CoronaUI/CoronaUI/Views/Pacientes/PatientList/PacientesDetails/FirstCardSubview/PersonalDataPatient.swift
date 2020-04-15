//
//  PersonalDataPatient.swift
//  CoronaUI
//
//  Created by Ronald Maciel on 15/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct PersonalDataPatient: View {
    
    var body: some View {
        
        VStack(alignment: .leading){
            // Name and Gender Stack
            HStack {
                Image("paciente-avatar")
                    .resizable()
                    .frame(width: 72, height: 72)
                    .padding()
                
                VStack(alignment: .leading, spacing: 2){
                    Text("Jorge Santos")
                        .font(.system(size: 24, weight: .bold))
                        .lineLimit(1)
                    
                    
                    Text("34 anos")
                        .font(.system(size: 20, weight: .light))
                    
                    
                    Text("SEM DOENÇAS PRÉ-EXISTENTES")
                        .font(.system(size: 12, weight: .medium))
                        .lineLimit(1)
                }
                
                
                Spacer(minLength: 150)
                
                
                Image("male")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.bottom, 40)
            }
            
            
            // Personal Data Stack
            VStack(alignment: .leading, spacing: 30){
                HStack {
                    Image("pinLocal")
                        .resizable()
                        .frame(width: 32, height: 32)
                        .padding(.trailing)
                    
                    VStack(alignment: .leading){
                        Text("Rua Nilo Peçanha, n.1877 / Apto 608")
                        Text("Bairro Petrópolis")
                    }
                }
                
                
                HStack {
                    Image("callIcon")
                        .resizable()
                        .frame(width: 27, height: 27)
                        .padding(.trailing)
                    
                    Text(" (51) 98365-4552")
                }
                
                HStack {
                    Image("mailIcon")
                        .resizable()
                        .frame(width: 31, height: 20)
                        .padding(.trailing)
                    
                    Text("jorge@gmail.com")
                }
            }
            .padding()
            .frame(width: 400)
            
        }.padding()
        
    }
}

struct PersonalDataPatient_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDataPatient()
            .previewLayout(.fixed(width: 1366, height: 1024))
        
    }
}
