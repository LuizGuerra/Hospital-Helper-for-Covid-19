//
//  HomeTests.swift
//  CoronaUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 07/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import Foundation

//enum

//func isLeapYear(year: Int) -> Bool {
//    return (year % 4 == 0 && !(year % 100 == 0)) || year % 400 == 0
//}

struct HomeTests {
    var when: Date
    var patientName: String
    var healthResponsible: String
}

fileprivate func date(hours after: Int) -> Date {
    return Date().addingTimeInterval(TimeInterval(after * 3600))
}

let todaysCalendar: [HomeTests] = [
    HomeTests(when: date(hours: 2), patientName: "Generic Name", healthResponsible: "Name Generic"),
    HomeTests(when: date(hours: 3), patientName: "Generic Name", healthResponsible: "Name Generic"),
    HomeTests(when: date(hours: 4), patientName: "Generic Name", healthResponsible: "Name Generic")
]
