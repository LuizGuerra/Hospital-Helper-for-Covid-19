//
//  ContentView.swift
//  CoronaUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 07/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

enum ViewSelected: String, CaseIterable {
    
    static var allCases: [ViewSelected] {
        return [ .dashboard, .pacientes, .agenda, .informacoes]
    }
    
    case dashboard
    case pacientes
    case agenda
    case informacoes
}

struct ContentView: View {
    
    @State var showingDashboard = false
    var body: some View {
        
        
        VStack {
          ForEach (ViewSelected.allCases, id: \.self) { view in
                
                VStack {
                    botao(viewName: view.rawValue)
                }
            }
        }.padding()
        .frame(width: 80, height: 600)
        .background(Color(red: 50/255, green: 50/255, blue: 50/255))
            
            
        
    }
}

struct botao: View {
    @State var viewName: String = ""
    var body: some View {
        VStack {
            Image(viewName).resizable().frame(width: 64, height: 64)
            Text(viewName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 1366, height: 1024))
        
    }
}
