//
//  RepoProvider.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 28/11/22.
//

import Foundation

protocol RepoProviderProtocol {
    func getAll(completion: @escaping APIResultCall)
}

class RepoProvider : RepoProviderProtocol{
    
    let request = APIRequest()
    
    func getAll(completion: @escaping APIResultCall) {
        request.open(url: EmojConstants.REPO_URL) { result in
            if result != nil {
                completion(result)
            } else {
                completion(nil)
            }
        }
    }
}
