//
//  CalendarCard.swift
//  CoronaUI
//
//  Created by Matheus Lima Ferreira on 4/15/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct CalendarCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("calendar-dashboard").renderingMode(.original)
                    .resizable()
                    .frame(width: 38, height: 38)
                HStack {
                    Text("Hoje,")
                    Text("1 de abril").font(.system(size: 16, weight: .bold, design: .default))
                    Text("de 2020")
                }
            }
            
            Text("Testes domiciliares")
            HStack {
                ApoimentCard()
                ApoimentCard()
                ApoimentCard()
            }
        }.frame(width: CGFloat.dashCardWidth(), height: CGFloat.dashCardHeight())
        .background(Color(UIColor.systemBackground))
        .cornerRadius(10)
        .shadow(color: Color.secondary, radius: 0.5, x: 0.5, y: 0.5)
    }
}

struct CalendarCard_Previews: PreviewProvider {
    static var previews: some View {
        CalendarCard()
    }
}

struct ApoimentCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Rectangle().frame(width: 3, height: 130).cornerRadius(10)
                    .foregroundColor(Color(UIColor(red: 0.468, green: 0.459, blue: 0.875, alpha: 1)))
                    .padding(.leading, 0)
                
                VStack(alignment: .leading, spacing: 15) {
                    VStack(alignment: .leading) {
                        Text("Pacientes").font(.system(size: 12, weight: .regular, design: .default))
                        Text("João Moraes").font(.system(size: 16, weight: .regular, design: .default))
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Enfermeiro").font(.system(size: 12, weight: .regular, design: .default))
                        Text("Lucas Costa").font(.system(size: 16, weight: .regular, design: .default))
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Horário").font(.system(size: 12, weight: .regular, design: .default))
                        Text("13h").font(.system(size: 16, weight: .regular, design: .default))
                    }
                }
            }.frame(width: 140, height: 160)
                .background(Color(UIColor(red: 0.468, green: 0.459, blue: 0.875, alpha: 0.15)))
                .cornerRadius(10)
        }
    }
}
