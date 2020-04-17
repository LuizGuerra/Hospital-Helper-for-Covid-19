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
                LocalCard()
            }
            
            HStack {
                CalendarCard()
                TwitterCard()
            }
        }.padding(.bottom, 200)
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
            .previewLayout(.fixed(width: 1366, height: 1024))
        
    }
}
