//
//  ListBusiness.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 28/11/22.
//

import Foundation

typealias APIListResultParse = ([String: String]) -> ()
typealias APIReposResultParse = ([Repos]) -> ()

protocol ListBusinessProtocol {
    func getAll(completion: @escaping APIListResultParse)
}


class ListBusiness : ListBusinessProtocol {
    
    let provider = ListProvider()
    
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
