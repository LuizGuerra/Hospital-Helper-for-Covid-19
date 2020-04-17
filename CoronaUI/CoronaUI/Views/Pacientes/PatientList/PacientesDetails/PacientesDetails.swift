//
//  PacientesDetails.swift
//  CoronaUI
//
//  Created by Ronald Maciel on 14/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct PacientesDetails: View {
    @Binding var showHeader: Bool
    var body: some View {
        
        VStack(spacing: 30) {
            HStack {
                
                
                // Personal data of the patient
                PersonalDataPatient()
                
                Spacer()
                    .frame(width: 1, height: 271)
                    .background(Color(UIColor.lightGray))
                    .padding(.all, 40)
                
                
                // Diagnostic of the symptoms
                DiagnosticPatient()
                
            }
            .frame(width: 1157, height: 352)
            .background(Color(UIColor.systemBackground))
            .cornerRadius(10)
            .shadow(color: Color.secondary, radius: 0.5, x: 0, y: 0.5)
            
            SecondCardDetailTopBar(currentTab: .acompanhamento)
        }
        .onAppear {
                print("mostrou detalhe")
                self.showHeader.toggle()
        }
        .onDisappear{
            self.showHeader.toggle()
        }
    }
}
