//
//  HomeTests.swift
//  CoronaUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 07/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import Foundation

struct HomeTests {
    var when: Date
    var patientName: String
    var healthResponsible: String
}

fileprivate func date(days after: Int) -> Date {
    return Date().addingTimeInterval(TimeInterval(after * 86400))
}

fileprivate func date(hours after: Int) -> Date {
    return Date().addingTimeInterval(TimeInterval(after * 3600))
}

let todaysCalendar: [HomeTests] = [
    HomeTests(when: date(hours: 2), patientName: "Generic Name", healthResponsible: "Name Generic")
]
