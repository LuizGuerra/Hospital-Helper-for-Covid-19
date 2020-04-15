//
//  DiagnosticPatient.swift
//  CoronaUI
//
//  Created by Ronald Maciel on 15/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct DiagnosticPatient: View {
    var body: some View {
        
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
}

struct DiagnosticPatient_Previews: PreviewProvider {
    static var previews: some View {
        DiagnosticPatient()
            .previewLayout(.fixed(width: 1366, height: 1024))
    }
}
