//
//  RandomEmojCoordinator.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 22/11/22.
//

import Foundation
import UIKit

class RandomEmojCoordinator: Coordinator {
    
    let navigationController : UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController    
    }
    
    func start() -> UIViewController {
        let randomVC = RandomEmojCoordinator.instantiateViewController() as! RandomEmojViewController
        let viewModel = RandomViewModel()
        randomVC.viewModel = viewModel
        return randomVC
    }
    
}

extension RandomEmojCoordinator : StoryboardInitializable {
    static var storyboardName: UIStoryboard.Storyboard {
        return .main
    }
}
