//
//  RepoBusiness.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 28/11/22.
//

import Foundation

protocol RepoBusinessProtocol {
    func getAll(completion: @escaping APIReposResultParse)
}


class RepoBusiness : RepoBusinessProtocol {
    
    let provider = RepoProvider()
    
    func getAll(completion: @escaping APIReposResultParse) {
        provider.getAll { result in
            if result != nil {
                do {
                    let json = JSONDecoder()
                    let repos = try json.decode([Repos].self, from: result!)
                    completion(repos)
                } catch {
                }
            } else {
            }
        }
    }
    
}
