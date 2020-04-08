//
//  Messages.swift
//  CoronaUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 08/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import Foundation

struct Message {
    let id = UUID()
    let userID: Int
    let text: String
}

struct Conversation {
    let messages: [Message]
}
