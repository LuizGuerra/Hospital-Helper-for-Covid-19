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
    @Binding var offset: CGFloat
    var body: some View {
        
        
        GeometryReader { view in
            VStack {
                
                Button(action: {
                    print("Selected the \(self.tab.nameOfTab) one")
                    self.currentTab = self.tab
                    self.offset =   view.frame(in: .global).midX
                    
                }) {
                    Text("\(self.tab.nameOfTab)")
                        .fontWeight(.bold)
                        .padding()
                }
            }
            
        }
    }
    
    func getOffSet() ->CGFloat {
        return offset
    }
}

struct CustomPageControll: View {
    @Binding var newOffSet: CGFloat
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 10).fill().frame(width: 190, height: 4)
                .foregroundColor(Color(UIColor(red: 0.468, green: 0.459, blue: 0.875, alpha: 1)))
                .offset(x: newOffSet )
        }
        .onAppear {
            print(self.newOffSet)
        }
    }

}

struct SecondCardDetailTopBar: View {
    
    @State private var offset: CGFloat = 0
    @State var currentTab: SubTab
    @State var selected: Bool = false
    
    var offSetX: CGFloat {
        switch currentTab {
        case .dadosSintomas:
            return offset
        case .acompanhamento:
            return offset
        case .mensagens: return offset
        case .pessoasProximas: return offset
        case .notas:
            return offset
        }
    }
    var body: some View {
        
            VStack {
                HStack {
                    SubTabButton(tab: .dadosSintomas, currentTab: self.$currentTab, offset: $offset)
                    
                    Spacer()
                    
                    SubTabButton(tab: .mensagens, currentTab: self.$currentTab, offset: $offset)
                    Spacer()
                    
                    SubTabButton(tab: .acompanhamento, currentTab: self.$currentTab, offset: $offset)
                    Spacer()
                    
                    SubTabButton(tab: .notas, currentTab: self.$currentTab,  offset: $offset)
                    Spacer()
                    
                    SubTabButton(tab: .pessoasProximas, currentTab: self.$currentTab,  offset: $offset)
                    
                }
                    
                .frame(width: 1156,height: 96)
                .background(Color(UIColor.systemBackground))
                .cornerRadius(10)
                .shadow(color: Color.secondary, radius: 0.5, x: 0, y: 0.5)
                .font(.system(size: 20))
                .foregroundColor(Color(UIColor.black))
                
               
                
                CustomPageControll(newOffSet: $offset).animation(.default)
                
                VStack{
                    self.getView(for: self.currentTab)
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
