//
//  MinisterioDaSaudeTwitter.swift
//  CoronaUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 07/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import Foundation

struct Tweet {
    var user: String
    var body: String
    var date: Date
    var aditionalUrl: URL?
}

let ministerioDaSaudeTweets: [Tweet] = [
    Tweet(user: "@SES_RS",
          body: "Saúde contrata mais 17 profissionais para o combate à Covid-19",
          date: Date(),
          aditionalUrl: URL(string: "https://saude.rs.gov.br/saude-contrata-mais-17-profissionais-para-o-combate-a-covid-19#.XozYnvgEOZY.twitter")),
    Tweet(user: "@SES_RS",
          body: "Atualizados para 508 os casos de #coronavirus no Rio Grande do Sul.\nForam 8 novos casos em Porto Alegre. Na Capital, um outro caso foi excluído por tratar-se de residente em outro Estado.",
          date: Date(),
          aditionalUrl: URL(string: "http://ti.saude.rs.gov.br/covid19")),
    Tweet(user: "@SES_RS",
          body: "Rio Grande do Sul registra quinto óbito por coronavírus: um homem de Porto Alegre, de 59 anos, que estava internado desde o dia 20 de março na Capital. A vítima não tinha histórico de outras doenças crônicas. Com os novos registros de hoje, o Estado chega a 316 casos",
          date: Date(),
          aditionalUrl: nil)
]
