//
//  PacientsPercent.swift
//  CoronaUI
//
//  Created by Matheus Lima Ferreira on 4/14/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct PacientsPercent: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("people").resizable().frame(width: 32, height: 32)
                
                Text("Pacientes")
                    .font(.custom("SFProDisplay-Bold", size: 32))
                    .padding(.leading, 8)
                }.padding(.leading, 37)
                .padding(.top, 33)
            
            HStack(spacing: 10) {
                
                //confirmados
                VStack(spacing: 6) {
                    Text("20").font(.custom("SFProDisplay-Bold", size: 81))
                        .foregroundColor(Color(UIColor(red: 0.9, green: 0.6, blue: 0.6, alpha: 1)))
                    HStack {
                        Image("red-arrow")
                        Text("10 %")
                            .foregroundColor(Color.red).bold()
                    }
                    Text("Confirmados").bold()
                }.frame(width: 270)
                
                Rectangle().frame(width: 0.5, height: 170).foregroundColor(Color.secondary)
                
                
                //suspeitos
                VStack(spacing: 6)  {
                    Text("10").font(.custom("SFProDisplay-Bold", size: 81))
                        .foregroundColor(Color(UIColor(red: 0.468, green: 0.459, blue: 0.875, alpha: 0.8)))
                        
                    HStack {
                        Image("green-arrow")
                        Text("10 %").foregroundColor(Color.green)
                            .font(.custom("SFProDisplay-Bold", size: 16))
                    }
                    Text("Suspeitos").bold()
                    
                }.frame(width: 270)
                
               
            }
            
            .padding()
        }
            .background(Color(UIColor.systemBackground))
        .cornerRadius(10)
        .shadow(color: Color.secondary, radius: 0.5, x: 0, y: 0.5)
    }
}

struct PacientsPercent_Previews: PreviewProvider {
    static var previews: some View {
        PacientsPercent()
    }
}
