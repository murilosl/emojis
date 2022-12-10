//
//  ReposViewModel.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 25/11/22.
//

import Foundation

protocol ReposViewModelProtocol {
    func getRepos(completion: @escaping APIReposResultParse)
}
class ReposViewModel {
    
    var service: RepoService
    
    init(service: RepoService) {
        self.service = service
    }
    
    func getRepos(completion: @escaping APIReposResultParse) {
        service.getRepoList(completion: { result in
            completion(result)
        })
    }
}
