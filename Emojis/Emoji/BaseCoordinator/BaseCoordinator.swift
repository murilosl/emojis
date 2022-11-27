//
//  BaseCoordinator.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 12/10/22.
//

import Foundation
import UIKit

protocol Coordinator {
    func start() -> UIViewController
}

final class AppCoordinator : Coordinator {
    
    private var window: UIWindow?

    
//    lazy var dataSource: DataStore = {
//        return DataStoreImp()
//    }()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    var mainCoordinator: MainCoordinator!
    
    @discardableResult
    func start() -> UIViewController {
        mainCoordinator = MainCoordinator()
        let mainVC = mainCoordinator.start()
        self.window?.rootViewController = mainVC
        self.window?.makeKeyAndVisible()
        return mainVC
    }
}
