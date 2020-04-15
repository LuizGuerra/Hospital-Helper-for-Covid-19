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
            
            
            Spacer()
                .frame(width: 1, height: 271)
                .background(Color(UIColor.lightGray))
                .padding(.all, 40)
            
            
            
            // Diagnostic of the symptoms
            VStack(alignment: .leading) {
                HStack {
                    
                    // Diagnostic Stack
                    VStack(alignment: .leading, spacing: 14){
                        Text("DIAGNÓSTICO")
                            .font(.system(size: 12, weight: .medium))
                            .lineLimit(1)
                            .foregroundColor(Color(UIColor(red: 0.588, green: 0.612, blue: 0.729, alpha: 1)))
                        
                        HStack {
                            Text("Covid-19")
                                .fontWeight(.bold)
                            Text("Positivo")
                                .foregroundColor(Color.red)
                        }
                        
                    }
                    
                    
                    // Symptoms Stack
                    VStack(alignment: .leading, spacing: 14) {
                        Text("INÍCIO SINTOMAS")
                            .font(.system(size: 12, weight: .medium))
                            .lineLimit(1)
                            .foregroundColor(Color(UIColor(red: 0.588, green: 0.612, blue: 0.729, alpha: 1)))
                            .frame(width: 105)
                        
                        
                        Text("26/03/2020")
                            .font(.headline)
                            .fontWeight(.thin)
                    }
                    .multilineTextAlignment(.leading)
                    .frame(width: 100)
                    .padding(.leading, 150)
                    .padding(.trailing, 20)
                    
                    
                    // Edit Button
                    Button(action: {
                        // edit
                    }) {
                        Image("editar").renderingMode(.original)
                            .resizable()
                            .frame(width: 38, height: 38)
                    }
                    .padding(.leading, 30)
                    .padding(.bottom, 30)
                }
                
                
                // Access Button
                Button(action: {
                    // access test
                }) {
                    Text("Acessar teste")
                        .frame(width: 210, height: 60)
                        .font(.title)
                        .background(Color.white)
                        .foregroundColor(Color(UIColor(red: 0.468, green: 0.459, blue: 0.875, alpha: 1)))
                        .border(Color(UIColor(red: 0.468, green: 0.459, blue: 0.875, alpha: 1)), width: 2)
                        .cornerRadius(3)
                }
                
                
                HStack {
                    Image("alert-circled")
                    Text("Paciente não respondeu o acompanhamento de hoje.")
                        .foregroundColor(Color.red)
                }
                .padding(.trailing)
                .padding(.vertical)
                
                
                // Notes Stack
                VStack(alignment: .leading, spacing: 6) {
                    Text("NOTAS")
                        .font(.custom("SF Pro Display", size: 12))
                        .lineLimit(1)
                        .foregroundColor(Color(UIColor(red: 0.588, green: 0.612, blue: 0.729, alpha: 1)))
                    
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Justo condimentum sit sapien vitae felis. Vitae feugiat diam nibh cursus et aliquam convallis.")
                        .lineLimit(2)
                }
            }
        }
        .frame(width: 1157, height: 352)
        .cornerRadius(10)
    }
}

struct PacientesDetails_Previews: PreviewProvider {
    static var previews: some View {
        PacientesDetails()
            .previewLayout(.fixed(width: 1366, height: 1024))
    }
}
