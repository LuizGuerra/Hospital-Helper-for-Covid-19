//
//  Patients.swift
//  CoronaUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 08/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import Foundation

// Mark: Structs and Enums

struct Telephone {
    var ddd: Int
    var number: Int
}

enum Gender {
    case nonBinary, man, woman
}

struct Patient {
    var id: Int
    var name: String
    var age: Int
    var district: String
    var telephone: Telephone
    var firstSintoms: Date
    var confirmed: Bool
    
    var address: String
    var email: String
    var notes: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Justo condimentum sit sapien vitae felis. Vitae feugiat diam nibh cursus et aliquam convallis. "
    var messages: Conversation?
    var gender: Gender
}

// Mark: Functions

fileprivate func date(days after: Int) -> Date {
    return Date().addingTimeInterval(TimeInterval(after * 86400))
}

var patientId = -1
func getPatientIndex() -> Int {
    patientId += 1
    return patientId
}

func getRandomGender() -> Gender {
    switch Int.random(in: 0 ... 2) {
        case 0: return .nonBinary
        case 1: return .woman
    default: return .man
    }
}

// Mark: Patients Array Generation

func generatePatients(listSize: Int) -> [Patient] {
    var patients: [Patient] = []
    for _ in 0 ..< listSize {
        let name = getRandomName()
        patients.append(
            Patient(id: getPatientIndex(),
                    name: name,
                    age: Int.random(in: 0...100),
                    district: getDistrict(),
                    telephone: Telephone(ddd: 51, number: 9900_0000 + Int.random(in: 0...10_000)),
                    firstSintoms: date(days: -Int.random(in: 1...100)),
                    confirmed: Bool.random(),
                    address: "",
                    email: name+"@gmail.com",
                    messages: nil,
                    gender: getRandomGender())
        )
    }
    return patients
}

let allPatients: [Patient] = generatePatients(listSize: 100)

