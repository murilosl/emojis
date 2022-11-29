//
//  MainCoordinator.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 23/11/22.
//

import Foundation
import UIKit


class MainCoordinator : Coordinator {

    weak var rootViewController: UINavigationController!
    
    var randomCoordinator: RandomEmojCoordinator!
    var listCoordinator: ListEmojisCoordinator!
    var listAvatarCoordinator: AvatarListCoordinator!
    var reposCoordinator : ReposCoordinator!

    func start() -> UIViewController {
        let mainVC = MainCoordinator.instantiateViewController() as! MainViewController
        rootViewController = UINavigationController(rootViewController: mainVC)
        let viewModel = MainViewModelImp()
        viewModel.coordinatorDelegate = self
        mainVC.viewModel = viewModel
        return rootViewController
    }
}

extension MainCoordinator: MainViewModelCoordinatorDelegate {
    func didTapRandom() {
        randomCoordinator = RandomEmojCoordinator(navigationController: self.rootViewController)
        let randomVC = randomCoordinator.start()
        self.rootViewController.pushViewController(randomVC, animated: true)
    }
    
    func didTapEmojisList() {
        listCoordinator = ListEmojisCoordinator(navigationController: self.rootViewController)
        let listVC = listCoordinator.start()
        self.rootViewController.pushViewController(listVC, animated: true)
    }
    
    func didTapAvatarList() {
        listAvatarCoordinator = AvatarListCoordinator(navigationController: self.rootViewController)
        let listAvatarVC = listAvatarCoordinator.start()
        self.rootViewController.pushViewController(listAvatarVC, animated: true)
    }
    
    func didTapRepo() {
        reposCoordinator = ReposCoordinator(navigationController: self.rootViewController)
        let reposVC = reposCoordinator.start()
        self.rootViewController.pushViewController(reposVC, animated: true)
    }

}

extension MainCoordinator: StoryboardInitializable {
    static func instantiateCollectionViewController() -> UICollectionViewController {
        return UICollectionViewController()
    }
    
    static var storyboardName: UIStoryboard.Storyboard {
        return .main
    }
}


