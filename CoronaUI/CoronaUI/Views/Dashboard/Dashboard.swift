//
//  Dashboard.swift
//  CoronaUI
//
//  Created by Matheus Lima Ferreira on 4/10/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            
            HStack {
                ProfileCard().padding(.trailing, 100)
                NotificationsCard()
            }
            HStack {
                PacientsPercent()
                PacientsPercent()
            }
            
            HStack {
                PacientsPercent()
                PacientsPercent()
            }
        }
        
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
