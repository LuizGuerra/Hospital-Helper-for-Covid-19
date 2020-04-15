//
//  LocalCard.swift
//  CoronaUI
//
//  Created by Matheus Lima Ferreira on 4/14/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct LocalCard: View {
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Image("local-data")
                    Text("Porto Alegre").font(.custom("SFProDisplay-Bold", size: 24))
                }
                HStack {
                    Text("316").font(.system(size: 24, weight: .bold, design: .default))
                    Text("confirmados").font(.custom("SFProDisplay-Bold", size: 20))
                    
                }
                HStack {
                    Text("5").font(.system(size: 24, weight: .bold, design: .default))
                    Text("obitos").font(.custom("SFProDisplay-Bold", size: 20))
                }
                
                HStack {
                    Text("200").font(.system(size: 24, weight: .bold, design: .default))
                    Text("suspeitos").font(.custom("SFProDisplay-Bold", size: 20))
                }
            }
            .padding(.leading, 42)
            
            Image("mapa").renderingMode(.original)
                .resizable()
                .frame(width: 199, height: 199)
                .padding(.leading, 40)
                .padding(.top,30)
                .padding(.trailing, 30)
                .padding(.bottom, 48)
        }
        
        .frame(width: CGFloat.dashCardWidth(), height: CGFloat.dashCardHeight())
        .background(Color(UIColor.systemBackground))
        .cornerRadius(10)
        .shadow(color: Color.secondary, radius: 0.5, x: 0.5, y: 0.5)
    }
    
    
}

struct LocalCard_Previews: PreviewProvider {
    static var previews: some View {
        LocalCard()
    }
}
