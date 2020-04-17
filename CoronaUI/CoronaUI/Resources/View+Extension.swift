//
//  DashboardCardFrame.swift
//  CoronaUI
//
//  Created by Matheus Lima Ferreira on 4/15/20.
//  Copyright © 2020 LuizGuerra. All rights

import SwiftUI


extension CGFloat {
    
    static func dashCardWidth() -> CGFloat{
        return UIScreen.main.bounds.width * 0.4
    }
    
    static func dashCardHeight() -> CGFloat {
        return UIScreen.main.bounds.height * 0.2724
    }
    
//     var dashboardCardWidth: CGFloat {
//        get {
//            return UIScreen.main.bounds.width * 0.4
//        }
//
//    }
//
//     var dashboardCardHeight: CGFloat {
//        get {
//            return UIScreen.main.bounds.height * 02724
//        }
//
//    }
}

extension Double{
    var cleanValue: String{
        return String(format: 1 == floor(self) ? "%.0f" : "%.1f", self)
    }
}

