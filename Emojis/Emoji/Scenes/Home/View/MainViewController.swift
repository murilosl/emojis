//
//  MainViewController.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 23/11/22.
//

import Foundation
import UIKit

class MainViewController : UIViewController {
    
    var viewModel : MainViewModel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func search(_ sender: Any) {
    }
    
    @IBAction func random(_ sender: Any) {
        viewModel?.didTapRandom()
    }
    
    @IBAction func listEmojis(_ sender: Any) {
        viewModel.didTapEmojisList()
    }
    
    
    @IBAction func avatarList(_ sender: Any) {
        viewModel.didTapAvatarList()
    }
    
    
    @IBAction func AppleRepos(_ sender: Any) {
        viewModel.didTapRepo()
    }
}
