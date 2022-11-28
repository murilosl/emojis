//
//  RepoBusiness.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 28/11/22.
//

import Foundation

protocol RepoBusinessProtocol {
    func getAll(completion: @escaping APIListResultParse)
}


class RepoBusiness : RepoBusinessProtocol {
    
    let provider = RepoProvider()
    
    func getAll(completion: @escaping APIListResultParse) {
        provider.getAll { result in
            if result != nil {
                do {
                    let json = JSONDecoder()
                    let emojis = try json.decode(Emoj.self, from: result!)
                    completion(emojis)
                } catch {
                    completion([:])
                }
            } else {
                completion([:])
            }
        }
    }
    
}
