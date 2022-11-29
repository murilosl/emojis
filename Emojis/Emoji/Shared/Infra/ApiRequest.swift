//
//  ApiRequest.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 27/11/22.
//

import Foundation
import Alamofire

typealias APIResultCall = (Data?) -> ()

struct DecodableType: Decodable {
    let url: String
}

class APIRequest{

    //MARK: - Generic Request
    
    func open(url: String, completion: @escaping APIResultCall){
        
        AF.request(url).response { response in
            
            guard let dataReturn = response.data else {
                return
            }
            completion(dataReturn)
        }
    }
}
