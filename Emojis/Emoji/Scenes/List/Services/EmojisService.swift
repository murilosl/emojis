//
//  EmojisListService.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 22/11/22.
//

import Foundation

protocol EmijisServiceProtocol {
    func getEmijisList(response: @escaping([EmojisModel])->())
    func getEmiji(by id: Int, response: @escaping(EmojisModel?)->())
}

class EmojisService : EmijisServiceProtocol {
    
    let request = APIRequest()
        
    init(){
    }
    
    func getEmijisList(response: @escaping ([EmojisModel]) -> ()) {
        request.open(url: "https://api.github.com/emojis") { response in
            print(response)
        }
    }
    
    func getEmiji(by id: Int, response: @escaping (EmojisModel?) -> ()) {
       
    }
    
}
