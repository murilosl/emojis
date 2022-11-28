//
//  AvatarService.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 28/11/22.
//

import Foundation

protocol AvatarServiceProtocol {
    func getAvatarList(completion: @escaping APIListResultParse)
}

class AvatarService : AvatarServiceProtocol{
    
    let manager = AvatarManager()
    
    func getAvatarList(completion: @escaping APIListResultParse) {
        manager.getAll { result in
            completion(result)
        }
    }
}
