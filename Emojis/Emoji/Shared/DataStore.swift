//
//  DataSource.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 22/11/22.
//

import Foundation

protocol DataStore {
    func getAllEmojis()->[EmojisModel]
    func getEmoji(by id: Int)->EmojisModel?
}

final class DataStoreImp : DataStore {
    
    private let data = [
        EmojisModel(name: "Teste")
    ]
    
    func getAllEmojis() -> [EmojisModel] {
        return data
    }
    
    func getEmoji(by id: Int) -> EmojisModel? {
        return EmojisModel(name: "teste")
    }
    
    
}
