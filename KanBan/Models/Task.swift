//
//  Task.swift
//  KanBan
//
//  Created by Sei Mouk on 5/11/24.
//

import Foundation

struct Task: Codable {
    let id: Int
    let title: String
    let description: String?
    let status: Int
    let deadline: Date?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case description = "description"
        case status = "status"
        case deadline = "deadline"
    }
}
