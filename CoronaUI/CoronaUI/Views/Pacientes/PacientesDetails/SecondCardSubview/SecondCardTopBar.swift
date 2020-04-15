//
//  Dados&Sintomas.swift
//  CoronaUI
//
//  Created by Ronald Maciel on 14/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

enum SubTab: String, CaseIterable {
    
    case dadosSintomas
    case mensagens
    case acompanhamento
    case notas
    case pessoasProximas
    
    static var allCases: [SubTab] {
        return [.dadosSintomas, .mensagens, .acompanhamento, .notas, .pessoasProximas]
    }
    
    
    var nameOfTab: String {
        switch self {
        case .dadosSintomas:
            return "Dados e Sintomas"
        case .mensagens:
            return "Mensagens"
        case .acompanhamento:
            return "Acompanhamento"
        case .notas:
            return "Notas"
        case .pessoasProximas:
            return "Pessoas próximas"
        }
    }
}



struct SubTabButton: View {
    let tab: SubTab
    
    @Binding var currentTab: SubTab
    
    var body: some View {
        
        Button(action: {
            print("Selected the \(self.tab.nameOfTab) one")
            self.currentTab = self.tab
        }) {
            Text("\(self.tab.nameOfTab)")
                .padding()
        }
        
    }
}



struct SecondCardDetailTopBar: View {
    
    @State var currentTab: SubTab
    
    var body: some View {
        VStack {
            HStack {
                SubTabButton(tab: .dadosSintomas, currentTab: $currentTab)
                
                Spacer()
                
                SubTabButton(tab: .mensagens, currentTab: $currentTab)
                Spacer()
                
                SubTabButton(tab: .acompanhamento, currentTab: $currentTab)
                Spacer()
                
                SubTabButton(tab: .notas, currentTab: $currentTab)
                Spacer()
                
                SubTabButton(tab: .pessoasProximas, currentTab: $currentTab)
            }
            .frame(width: 1156,height: 96)
            
            VStack{
                getView(for: currentTab)
            }
        }
    }
    
    
    func getView(for tab: SubTab) -> AnyView {
        switch tab {
        case .dadosSintomas:
            return AnyView(Dado_Sintomas())
        case .mensagens:
            return AnyView(Mensagens())
        case .acompanhamento:
            return AnyView(Acompanhamento())
        case .notas:
            return AnyView(Notas())
        case .pessoasProximas:
            return AnyView(PessoasProximas())
        }
    }
}

struct Dados_Sintomas_Previews: PreviewProvider {
    static var previews: some View {
        SecondCardDetailTopBar(currentTab: .acompanhamento)
            .previewLayout(.fixed(width: 1366, height: 1024))
        
    }
}
