//
//  Patients.swift
//  CoronaUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 08/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import Foundation

struct Telephone {
    var ddd: Int
    var number: Int
}

struct Patient {
    var id: Int
    var name: String
    var age: Int
    var district: String
    var telephone: Telephone
    var firstSintoms: Date
    var confirmed: Bool
}

fileprivate func date(days after: Int) -> Date {
    return Date().addingTimeInterval(TimeInterval(after * 86400))
}

func getRandomName() -> String {
    return (possibleNames.randomElement() ?? "Felipe") + " " + (possibleSurnames.randomElement() ?? "Almeida")
}

func getDistrict() -> String {
    return possibleSurnames.randomElement() ?? "Centro"
}

var patientId = -1
func getPatientIndex() -> Int {
    patientId += 1
    return patientId
}

func generatePatients(listSize: Int) -> [Patient] {
    var patients: [Patient] = []
    for i in 0 ..< listSize {
        patients.append(Patient(id: getPatientIndex(), name: getRandomName(), age: Int.random(in: 0...100), district: getDistrict(), telephone: Telephone(ddd: 51, number: 9900_0000 + Int.random(in: 0...10_000)), firstSintoms: date(days: -Int.random(in: 1...100)), confirmed: Bool.random()))
    }
    return patients
}

let allPatients: [Patient] = generatePatients(listSize: 100)

/* Mocked strings */

let possibleNames = ["James", "Emily", "Liam", "Emma", "Benjamin", "Olivia", "Oliver", "Charlotte", "Gabriel", "Elise", "Hugo", "Lucia", "Francesco", "Sofia", "Noah", "Jakob", "William", "Alice", "Anna", "Alexander", "Jose", "Maria", "Wei", "Lee", "Hiroshi", "Nozomi", "Do Yoon", "Ha Yoon", "Mohamed", "Ayesha", "Tamar", "Saanvi", "John", "RObert", "Michael"]

let possibleSurnames = ["Cohen", "Levi", "Mizrachi", "Peretz", "Biton", "Dahan", "Avraham", "Friedman", "Yosef", "Omer", "Ochion", "Takahashi", "Yoshida", "Matshumoto", "Inoue", "Saitô", "Chung", "Lim", "Yang", "Park", "Lee", "Pereira", "Kumara", "Wijesinghe", "Ahamed", "Mayer", "Müler", "Berger", "Wolf", "Wanner", "Ebner", "Heilg", "Portillo"]

let possibleDistricts = [
            "Aberta dos Morros",
            "Agronomia",
            "Anchieta",
            "Arquipélago",
            "Auxiliadora",
            "Azenha",
            "Bela Vista",
            "Belém Novo",
            "Belém Velho",
            "Boa Vista",
            "Bom Fim",
            "Bom Jesus",
            "Camaquã",
            "Cascata",
            "Cavalhada",
            "Cel. Aparício Borges",
            "Centro",
            "Chácara das Pedras",
            "Chapéu do Sol",
            "Cidade Baixa",
            "Cristal",
            "Cristo Redentor",
            "Espírito Santo",
            "Farrapos",
            "Farroupilha",
            "Floresta",
            "Glória",
            "Guarujá",
            "Higienópolis",
            "Hípica",
            "Humaitá",
            "Independência",
            "Ipanema",
            "Jardim Botânico",
            "Jardim Carvalho",
            "Jardim do Salso",
            "Jardim Floresta",
            "Jardim Isabel",
            "Jardim Itu-Sabará",
            "Jardim Lindóia",
            "Jardim São Pedro",
            "Lageado",
            "Lami",
            "Lomba do Pinheiro",
            "Marcílio Dias",
            "Mário Quintana",
            "Medianeira",
            "Menino Deus",
            "Moinhos de Vento",
            "Mont Serrat",
            "Navegantes",
            "Nonoai",
            "Partenon",
            "Passo da Areia",
            "Passo das Pedras/Jd. Leopoldina",
            "Pedra Redonda",
            "Petrópolis",
            "Ponta Grossa",
            "Praia de Belas",
            "Protásio Alves/Alto Petrópolis",
            "Restinga",
            "Rio Branco",
            "Rubem Berta",
            "Santa Cecília",
            "Santa Maria Goretti",
            "Santa Tereza",
            "Santana",
            "Santo Antônio",
            "São Caetano",
            "São Geraldo",
            "São João",
            "São José",
            "São Sebastião",
            "Sarandi",
            "Serraria",
            "Teresópolis",
            "Três Figueiras",
            "Tristeza",
            "Vila Assunção",
            "Vila Conceição",
            "Vila Ipiranga",
            "Vila Jardim",
            "Vila João Pessoa",
            "Vila Nova"
]
