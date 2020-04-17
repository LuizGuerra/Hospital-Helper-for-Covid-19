//
//  CalendarHead.swift
//  CoronaUI
//
//  Created by Ronald Maciel on 16/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct CalendarHead: View {
    var body: some View {
        VStack {
            VStack {
                Text("HOJE")
                    .frame(width: 163, height: 23)
                    .font(.system(size: 12, weight: .medium, design: .default))
                    .background(Color(UIColor(red: 0.588, green: 0.612, blue: 0.729, alpha: 1)))
                    .foregroundColor(Color.white)
                    .cornerRadius(10, corners: [.topRight, .topLeft])
                
                
                
                VStack {
                    Text("01")
                        .font(.system(size: 36, weight: .bold, design: .default))
                    
                    Text("Qua")
                }.padding(.vertical, 6)
                
            }
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(UIColor(red: 0.588, green: 0.612, blue: 0.729, alpha: 1)), lineWidth:2))
            
            
        }
        .frame(width: 163, height: 91)
    }    
}

struct CalendarHead_Previews: PreviewProvider {
    static var previews: some View {
        CalendarHead()
    }
}
