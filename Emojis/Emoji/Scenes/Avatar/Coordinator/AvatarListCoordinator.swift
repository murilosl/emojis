//
//  AvatarListCoordinator.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 25/11/22.
//

import Foundation
import UIKit

class AvatarListCoordinator: Coordinator {
    
    var rootViewController: UINavigationController!
        
    let navigationController : UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() -> UIViewController {
        let listVC = AvatarListCoordinator.instantiateViewController() as! AvatarListViewController
        let viewModel = AvatarListViewModel()
        listVC.viewModel = viewModel
        return listVC
    }
    
}

extension AvatarListCoordinator: StoryboardInitializable {
    static var storyboardName: UIStoryboard.Storyboard {
        return .main
    }
}
