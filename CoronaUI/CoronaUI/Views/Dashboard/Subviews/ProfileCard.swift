//
//  ProfileCard.swift
//  CoronaUI
//
//  Created by Matheus Lima Ferreira on 4/14/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct ProfileCard: View {
    
    @State var name: String = "Simone"
    @State var numberOfPacients = 30
    
    var body: some View {
        HStack(spacing: 24) {
            Image("woman").resizable().frame(width: 105, height: 115)
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Olá,").font(.largeTitle)
                    Text(name).font(.largeTitle).bold()
                }
                
                Text("Você está acompanhando")
                Text("\(numberOfPacients) pacientes").bold()
            }
        }
        
    }
}

struct ProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCard()
    }
}
