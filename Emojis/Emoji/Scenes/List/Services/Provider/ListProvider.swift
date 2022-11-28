//
//  ListProvider.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 28/11/22.
//

import Foundation

protocol ListProviderProtocol {
    func getAll(completion: @escaping APIResultCall)
}

class ListProvider : ListProviderProtocol{
    
    let request = APIRequest()
    
    func getAll(completion: @escaping APIResultCall) {
        request.open(url: EmojConstants.URL) { result in
            if result != nil {
                completion(result)
            } else {
                completion(nil)
            }
        }
    }
}
