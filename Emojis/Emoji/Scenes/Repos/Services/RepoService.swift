//
//  RepoService.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 28/11/22.
//

import Foundation

protocol RepoServiceProtocol {
    func getRepoList(completion: @escaping APIReposResultParse)
}

class RepoService : RepoServiceProtocol{
    
    let manager = RepoManager()
    
    func getRepoList(completion: @escaping APIReposResultParse) {
        manager.getAll { result in
            completion(result)
        }
    }
}
