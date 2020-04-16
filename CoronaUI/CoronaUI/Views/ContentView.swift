//
//  ContentView.swift
//  CoronaUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 07/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

enum Tab: String, CaseIterable {
    
    static var allCases: [Tab] {
        return [ .dashboard, .pacientes, .agenda, .informacoes]
    }
    
    case dashboard
    case pacientes
    case agenda
    case informacoes
    
    var name: String {
        switch self {
        case .dashboard: return "Dashboard"
        case .pacientes: return "Pacientes"
        case .agenda: return "Agenda"
        case .informacoes: return "Informações"
        }
    }
    
    var iconName: String {
        switch self {
        case .dashboard: return "dashboard"
        case .pacientes: return "pacientes"
        case .agenda: return "agenda"
        case .informacoes: return "informacoes"
        }
    }
}


struct TabButton: View {
    let tab: Tab
    
    @Binding var currentTab: Tab
    
    var body: some View {
        
        Button(action: {
            
            print("Did select \(self.tab.name) tab")
            self.currentTab = self.tab
            
        }) {
            Image(self.tab.iconName)
                .frame(width: 50, height: 50)
        }.padding(16)
        
    }
}

struct ContentView: View {
    
    @State var searchText : String = ""
    @State var showingDashboard = false
    
    @State var currentTab: Tab
    var body: some View {
        
        
        HStack {
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 56, height: 56)
                    .padding()
                
                Spacer()
                
                TabButton(tab: .dashboard, currentTab: $currentTab)
                TabButton(tab: .pacientes, currentTab: $currentTab)
                TabButton(tab: .agenda, currentTab: $currentTab)
                TabButton(tab: .informacoes, currentTab: $currentTab)
                
                Spacer() // set the distance
                
                Image("logo_RS")
                    .resizable()
                    .frame(width: 64, height: 46)
                    .padding()
                
            }.frame(width: 116, height: UIScreen.main.bounds.height+1 )//ou seta 1024 mesmo azar
                .background(Color(red: 0.216, green: 0.231, blue: 0.325))
            
            VStack {
                TopBar()
                getView(for: currentTab)
            }
            
            
        }
        .statusBar(hidden: true)
        .background(Color(UIColor.secondarySystemBackground))
        
        
    }
    
    func getView(for tab: Tab) -> AnyView {
        switch tab {
        case .dashboard: return AnyView(Dashboard())
        case .pacientes: return AnyView(PatientList(showPatientList: .confirmed, patientList: allPatients))
        case .agenda:return AnyView(Agenda())
        case .informacoes:return AnyView(Informacoes())
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(searchText: "", currentTab: .dashboard)
            .previewLayout(.fixed(width: 1366, height: 1024))
    }
}
