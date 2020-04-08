//
//  PatientNameGeneration.swift
//  CoronaUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 08/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import Foundation

func getRandomName() -> String {
    return (possibleNames.randomElement() ?? "Felipe") + " " + (possibleSurnames.randomElement() ?? "Almeida")
}

let possibleNames = ["James", "Emily", "Liam", "Emma", "Benjamin", "Olivia", "Oliver", "Charlotte", "Gabriel", "Elise", "Hugo", "Lucia", "Francesco", "Sofia", "Noah", "Jakob", "William", "Alice", "Anna", "Alexander", "Jose", "Maria", "Wei", "Lee", "Hiroshi", "Nozomi", "Do Yoon", "Ha Yoon", "Mohamed", "Ayesha", "Tamar", "Saanvi", "John", "RObert", "Michael"]

let possibleSurnames = ["Cohen", "Levi", "Mizrachi", "Peretz", "Biton", "Dahan", "Avraham", "Friedman", "Yosef", "Omer", "Ochion", "Takahashi", "Yoshida", "Matshumoto", "Inoue", "Saitô", "Chung", "Lim", "Yang", "Park", "Lee", "Pereira", "Kumara", "Wijesinghe", "Ahamed", "Mayer", "Müler", "Berger", "Wolf", "Wanner", "Ebner", "Heilg", "Portillo"]

