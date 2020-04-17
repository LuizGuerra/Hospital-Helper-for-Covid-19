//
//  CalendarMockHead.swift
//  CoronaUI
//
//  Created by Ronald Maciel on 16/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct CalendarMockHead: View {
    
    @State var daysMonth: [Int] = []
    @State var daysWeek: [String] = []
    
    init(daysMonth: [Int], daysWeek: [String]) {
        self.daysMonth = daysMonth
        self.daysWeek = daysWeek
    }
    
    var body: some View {
        VStack {
            VStack {
                Text("31")
                    .font(.system(size: 36, weight: .bold, design: .default))
                
                
                Text("Ter")
            }.padding(.vertical, 6)
                .foregroundColor(Color(UIColor(red: 0.658, green: 0.658, blue: 0.658, alpha: 1)))
        }
        .frame(width: 163, height: 91)
    }
}

struct CalendarMockHead_Previews: PreviewProvider {
    static var previews: some View {
        CalendarMockHead(daysMonth: [0], daysWeek: [""])
    }
}
