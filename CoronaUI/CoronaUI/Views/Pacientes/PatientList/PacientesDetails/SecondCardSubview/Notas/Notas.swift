//
//  Notas.swift
//  CoronaUI
//
//  Created by Ronald Maciel on 15/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct Notas: View {
    var body: some View {
        HStack {
            HStack {
                VStack {
                    Text("Comming soon! :) ")
                    Text("").font(.title)            }
            }.frame(width: UIScreen.main.bounds.height , height: UIScreen.main.bounds.height * 0.38)
        }
        
    }
}

struct Notas_Previews: PreviewProvider {
    static var previews: some View {
        Notas()
    }
}
