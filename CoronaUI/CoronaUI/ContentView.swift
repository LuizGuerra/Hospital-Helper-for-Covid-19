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
        
        
        HStack {
            VStack {
                // Image Logo View
                VStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 56, height: 56)
                        .padding(.bottom, 100)
                }
                
                // Tab Bar View
                ForEach (ViewSelected.allCases, id: \.self) { view in
                    
                    VStack {
                        botao(viewName: view.rawValue)
                        
                        Spacer()
                    }
                }
                
                Spacer()
                
                // Logo RS View
                VStack {
                    
                    Spacer(minLength: 266) // set the distance
                    Image("logo_RS")
                        .resizable()
                        .frame(width: 64, height: 46)
                }
                
            }.padding()
                .frame(width: 116, height: 1024)
                .background(Color(red: 50/255, green: 50/255, blue: 50/255))
            
            
            Text("hi")
        }
    }
}

struct botao: View {
    @State var viewName: String = ""
    
    var body: some View {
        
        VStack {
            Image(viewName).resizable()
                .frame(width: 64, height: 64)
            
            Text(viewName)
                .font(.subheadline)
                .fontWeight(.bold)
                .frame(width: 116, height: 24)
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 1366, height: 1024))
        
    }
}
