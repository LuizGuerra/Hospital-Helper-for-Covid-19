//
//  NotificationsCard.swift
//  CoronaUI
//
//  Created by Matheus Lima Ferreira on 4/14/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct NotificationsCard: View {
    var body: some View {
        
        ZStack(alignment: .leading) {
            
//            HStack{
                
//                Rectangle().frame(width: 10, height: 216).cornerRadius(10)
//                .foregroundColor(Color(UIColor(red: 0.468, green: 0.459, blue: 0.875, alpha: 0.05)))
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    HStack {
                        Image("notif_bell_dark")
                        Text("Notificações")
                    }
                    
                    ForEach(0..<3) {_ in
                        HStack {
                            Image("ellipse").resizable().frame(width: 17, height: 17)
                            Text("Paciente Carlos da Silva não respondeu sua solitação").fixedSize()
                        }
                    }
                }
            
        }
            
        .frame(width: 500,height: 216)
            .padding(.leading, 0)

        .background(Color(UIColor(red: 0.468, green: 0.459, blue: 0.875, alpha: 0.1)))
        .cornerRadius(10)
        
    }
}

struct NotificationsCard_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsCard()
    }
}
