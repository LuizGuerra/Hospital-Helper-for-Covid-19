//
//  PacientesDetails.swift
//  CoronaUI
//
//  Created by Ronald Maciel on 14/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct PacientesDetails: View {
    var body: some View {
        
        HStack {
            // Data of the patient - name, address, telephone, e-mail
            VStack(alignment: .leading) {
                
                // Name and Gender Stack
                HStack{
                    Image("paciente-avatar")
                        .resizable()
                        .frame(width: 72, height: 72)
                    
                    VStack(alignment: .leading){
                        Text("Jorge Santos")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("34 anos")
                            .font(.custom("SF Pro Display", size: 20))
                            .fontWeight(.light)
                        Text("SEM DOENÇAS PRÉ-EXISTENTES")
                            .font(.custom("SF Pro Display", size: 12))                            .fontWeight(.medium)
                    }
                    
                    Spacer(minLength: 217)
                    
                    Image("male")
                        .resizable()
                        .frame(width: 28.5, height: 28.5)
                }
                .padding()
                
                
                // Personal Data Stack
                VStack(alignment: .leading){
                    HStack {
                        Image("pinLocal")
                            .resizable()
                            .frame(width: 32, height: 32)
                        
                        VStack(alignment: .leading){
                            Text("Rua Nilo Peçanha, n.1877 / Apto 608")
                            Text("Bairro Petrópolis")
                        }
                        
                        
                    }
                    
                    HStack {
                        Image("callIcon")
                            .resizable()
                            .frame(width: 27, height: 27)
                        Text("(51)98365-4552")
                    }
                    
                    HStack {
                        Image("mailIcon")
                            .resizable()
                            .frame(width: 31, height: 20)
                        
                        Text("jorge@gmail.com")
                    }
                }
                .padding()
                
            }.padding()
            
            Spacer()
                .frame(width: 1, height: 271)
                .background(Color(UIColor.lightGray))
            
            // Diagnostic of the symptoms
            VStack {
                HStack {
                    Text("Diagnóstico")
                    Text("INÍCIO SINTOMAS")
                    
                    Button(action: {
                        
                    }) {
                        Image("editar")
                            .resizable()
                            .frame(width: 38, height: 38)
                    }
                }
                
                
                HStack {
                    Text("COVID-19 POSITIVO")
                    Text("26/03/2020")
                }
                
                Text("Acessar teste")
                
                HStack {
                    Image("alert-circled")
                    Text("Paciente não respondeu o acompanhamento de hoje.")
                }
                
                VStack {
                    Text("Notas")
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Justo condimentum sit sapien vitae felis. Vitae feugiat diam nibh cursus et aliquam convallis. ")
                }
            }
        }
        .frame(width: 1157, height: 352)
        
        
    }
}

struct PacientesDetails_Previews: PreviewProvider {
    static var previews: some View {
        PacientesDetails()
            .previewLayout(.fixed(width: 1366, height: 1024))
    }
}
