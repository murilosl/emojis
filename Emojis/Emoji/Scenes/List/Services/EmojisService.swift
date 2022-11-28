//
//  EmojisListService.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 22/11/22.
//

import Foundation

protocol EmijisServiceProtocol {
    func getEmijisList(completion: @escaping APIListResultParse)
}

class EmojisService : EmijisServiceProtocol {
    
    let manager = ListManager()
        
    init(){
    }
    
    func getEmijisList(completion: @escaping APIListResultParse) {
        manager.getAll { result in
            completion(result)
        }
    }
}
