//
//  RepoService.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 28/11/22.
//

import Foundation

protocol RepoServiceProtocol {
    func getRepoList(completion: @escaping APIListResultParse)
}

class RepoService : RepoServiceProtocol{
    
    let manager = RepoManager()
    
    func getRepoList(completion: @escaping APIListResultParse) {
        manager.getAll { result in
            completion(result)
        }
    }
}
