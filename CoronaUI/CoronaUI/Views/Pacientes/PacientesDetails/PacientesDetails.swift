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
        .cornerRadius(10)
    }
}

struct PacientesDetails_Previews: PreviewProvider {
    static var previews: some View {
        PacientesDetails()
            .previewLayout(.fixed(width: 1366, height: 1024))
    }
}
