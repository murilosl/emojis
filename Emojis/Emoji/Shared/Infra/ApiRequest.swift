//
//  ApiRequest.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 27/11/22.
//

import Foundation
import Alamofire

typealias APIResultCall = (Data?) -> ()

class APIRequest{

    //MARK: - Generic Request
    
    func open(url: String, completion: @escaping APIResultCall){
        
        AF.request(url).response { response in
            if let dataReturn = response.value {
                completion(dataReturn)
            } else {
                completion(nil)
            }
        }
    }
}
