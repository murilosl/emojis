//
//  AvatarProvider.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 28/11/22.
//

import Foundation

protocol AvatarProviderProtocol {
    func getAll(completion: @escaping APIResultCall)
}

class AvatarProvider : AvatarProviderProtocol{
    
    let request = APIRequest()
    
    func getAll(completion: @escaping APIResultCall) {
        request.open(url: EmojConstants.AVATAR_URL) { result in
            if result != nil {
                completion(result)
            } else {
                completion(nil)
            }
        }
    }
}
