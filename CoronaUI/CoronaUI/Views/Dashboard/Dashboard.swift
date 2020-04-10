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
        HStack{
                List {
                    ForEach (0..<100) {val in
                        Color(Dashboard.getRandomColor())
                        Text("Dashboard vai ir aqui \(val)")
                    }.frame(height: 120)
            }
        }
        
    }
    static func getRandomColor () -> UIColor {
        switch Int.random(in: 0..<7) {
        case 0: return .green
        case 1: return .systemPink
        case 2: return .orange
        case 3: return .blue
        case 4: return .brown
        case 5: return .yellow
        case 6: return .purple
        default:
            return .red
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
