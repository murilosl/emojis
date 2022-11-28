//
//  DataSource.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 22/11/22.
//

import Foundation

protocol DataStore {
    func getAllEmojis()->[Emoj]
    func getEmoji(by id: Int)->Emoj?
}

final class DataStoreImp : DataStore {
    
    private let data = [
        Emoj(name: "Teste")
    ]
    
    func getAllEmojis() -> [Emoj] {
        return data
    }
    
    func getEmoji(by id: Int) -> Emoj? {
        return EmojisModel(name: "teste")
    }
    
    
}
