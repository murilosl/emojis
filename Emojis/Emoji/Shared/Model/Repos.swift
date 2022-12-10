//
//  Repos.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 10/12/22.
//

import Foundation

struct Repos: Codable {
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case name
    }
}
