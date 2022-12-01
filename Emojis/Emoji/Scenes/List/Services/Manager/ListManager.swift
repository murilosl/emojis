//
//  ListManager.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 28/11/22.
//

import Foundation

protocol ListManagerProtocol {
    func getAll(completion: @escaping APIListResultParse)
}

class ListManager : ListManagerProtocol {
    let business = ListBusiness()
    
    func getAll(completion: @escaping APIListResultParse) {
        business.getAll { result in
            if result != nil {
                completion(result)
            } else {
                completion([:])
            }
        }
    }
}
