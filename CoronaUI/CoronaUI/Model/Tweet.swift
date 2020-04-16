//
//  Tweet.swift
//  CoronaUI
//
//  Created by Matheus Lima Ferreira on 4/15/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tweet = try? newJSONDecoder().decode(Tweet.self, from: jsonData)

import Foundation

// MARK: - Tweet
struct TweetModel: Codable {
    let createdAt, idStr, text: String
    let displayTextRange: [Int]
    let truncated: Bool
    let user: User
    let extendedTweet: ExtendedTweet
    let entities: Entities

    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case idStr = "id_str"
        case text
        case displayTextRange = "display_text_range"
        case truncated, user
        case extendedTweet = "extended_tweet"
        case entities
    }
}

// MARK: - Entities
struct Entities: Codable {
    let hashtags: [Hashtag]
}

// MARK: - Hashtag
struct Hashtag: Codable {
    let text: String
    let indices: [Int]
}

// MARK: - ExtendedTweet
struct ExtendedTweet: Codable {
    let fullText: String
    let displayTextRange: [Int]
    let entities: Entities

    enum CodingKeys: String, CodingKey {
        case fullText = "full_text"
        case displayTextRange = "display_text_range"
        case entities
    }
}

// MARK: - User
struct User: Codable {
    let idStr, screenName: String

    enum CodingKeys: String, CodingKey {
        case idStr = "id_str"
        case screenName = "screen_name"
    }
}
