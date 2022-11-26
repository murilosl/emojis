//
//  ReposCoordinator.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 25/11/22.
//

import Foundation
import UIKit

class ReposCoordinator: Coordinator {
    
    var rootViewController: UINavigationController!
        
    let navigationController : UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() -> UIViewController {
        let reposVC = ReposCoordinator.instantiateViewController() as! ReposViewController
        let viewModel = ReposViewModel()
        reposVC.viewModel = viewModel
        return reposVC
    }
    
}

extension ReposCoordinator: StoryboardInitializable {
    static var storyboardName: UIStoryboard.Storyboard {
        return .main
    }
}
