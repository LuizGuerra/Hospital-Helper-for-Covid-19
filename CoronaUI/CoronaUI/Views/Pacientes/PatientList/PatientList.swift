//
//  PatientList.swift
//  CoronaUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 14/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

enum ShowPatientList {
    case confirmed, suspect, all
}

struct PatientList: View {
    
    @State var showPatientList: ShowPatientList
    @State var showHeader: Bool = false
    
    let patientList: [Patient]
    
    var body: some View {
        ZStack {
            ApplicationColors.lightGray
            VStack {
                if self.showHeader {
                    PatientsListHeader().hidden().animation(.default)
                } else {
                    PatientsListHeader().animation(.linear)
                }
                
                NavigationView() {
                    ScrollView(.vertical) {
                        ForEach(getPatientList(), id: \.id) { patient in
                            PatientCell(patient: patient, showHeader: self.$showHeader)
                                .cornerRadius(10)
                                .padding(.vertical, 10)
                        }
                        
                    }
                }.navigationViewStyle(StackNavigationViewStyle())
                
            }
        }
        
    }

    
    func getPatientList () -> [Patient] {
        switch showPatientList {
        case .confirmed:
            return patientList.filter { $0.confirmed }
        case .suspect:
            return patientList.filter { !$0.confirmed }
        default:
            return patientList
        }
    }
    
}

struct PatientList_Previews: PreviewProvider {
    static var previews: some View {
        PatientList(showPatientList: .confirmed, patientList: allPatients)
            .previewLayout(.fixed(width: 1150, height: 1700))
    }
}
