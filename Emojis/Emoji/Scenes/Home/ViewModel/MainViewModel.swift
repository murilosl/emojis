//
//  MainViewModel.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 24/11/22.
//

import Foundation

protocol MainViewModelCoordinatorDelegate : class {
    func didTapRandom()
    func didTapEmojisList()
    func didTapAvatarList()
    func didTapRepo()
}

protocol MainViewModel : class {
    var coordinatorDelegate : MainViewModelCoordinatorDelegate?{get set}
    func didTapRandom()
    func didTapEmojisList()
    func didTapAvatarList()
    func didTapRepo()
}

class MainViewModelImp : MainViewModel {
    weak var coordinatorDelegate: MainViewModelCoordinatorDelegate?

    
    init() {
        
    }
    
    func didTapRandom() {
        self.coordinatorDelegate?.didTapRandom()
    }
    
    func didTapEmojisList() {
        self.coordinatorDelegate?.didTapEmojisList()
    }
    
    func didTapAvatarList() {
        self.coordinatorDelegate?.didTapAvatarList()
    }
    
    func didTapRepo() {
        self.coordinatorDelegate?.didTapRepo()
    }

}
