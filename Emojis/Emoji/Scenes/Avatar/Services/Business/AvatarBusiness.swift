//
//  AvatarBusiness.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 28/11/22.
//

import Foundation

protocol AvatarBusinessProtocol {
    func getAll(completion: @escaping APIListResultParse)
}


class AvatarBusiness : AvatarBusinessProtocol {
    
    let provider = AvatarProvider()
    
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
