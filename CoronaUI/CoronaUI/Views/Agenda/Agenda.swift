//
//  Agenda.swift
//  CoronaUI
//
//  Created by Matheus Lima Ferreira on 4/10/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct Agenda: View {
    var body: some View {
        HStack {
            VStack {
                Text("Comming soon! :) ")
                Text("").font(.title)            }
        }.frame(width: UIScreen.main.bounds.height , height: UIScreen.main.bounds.height * 0.986)
    }
}

struct Agenda_Previews: PreviewProvider {
    static var previews: some View {
        Agenda()
    }
}
