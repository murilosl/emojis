//
//  AvatarManager.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 28/11/22.
//

import Foundation

protocol AvatarManagerProtocol {
    func getAll(completion: @escaping APIListResultParse)
}

class AvatarManager : AvatarManagerProtocol {
    let business = AvatarBusiness()
    
    func getAll(completion: @escaping APIListResultParse) {
        business.getAll { result in
            if result.isEmpty {
                completion(result)
            } else {
                completion([:])
            }
        }
    }
}
