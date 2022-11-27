//
//  ListEmojisCoordinator.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 22/11/22.
//

import Foundation
import UIKit

class ListEmojisCoordinator: Coordinator {
    
    var rootViewController: UINavigationController!
        
    let navigationController : UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() -> UIViewController {
        let listVC = ListEmojisCoordinator.instantiateViewController() as! ListEmojisViewController
        let service = EmojisService()
        let viewModel = EmojisListViewModel(service: service)
        listVC.viewModel = viewModel
        return listVC
        
    }
    
}

extension ListEmojisCoordinator: StoryboardInitializable {
    static var storyboardName: UIStoryboard.Storyboard {
        return .main
    }
}
