//
//  PortoAlegreStatus.swift
//  CoronaUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 07/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import Foundation

struct PortoAlegreStatus {
    var confirmed: Int
    var deaths: Int
    var suspects: Int
    var date: Date
}

let poaStatus: [PortoAlegreStatus] = [
    PortoAlegreStatus(confirmed: 316, deaths: 5, suspects: 200, date: Date()),
    PortoAlegreStatus(confirmed: 296, deaths: 5, suspects: 210, date: Date().addingTimeInterval(-86400))
]
