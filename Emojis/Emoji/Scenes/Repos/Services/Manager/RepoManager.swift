//
//  RepoManager.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 28/11/22.
//

import Foundation

protocol RepoManagerProtocol {
    func getAll(completion: @escaping APIListResultParse)
}

class RepoManager : RepoManagerProtocol {
    let business = RepoBusiness()
    
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
