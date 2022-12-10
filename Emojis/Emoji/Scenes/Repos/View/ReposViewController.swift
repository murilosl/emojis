//
//  ReposViewController.swift
//  Emojis
//
//  Created by Murilo de Souza Lopes on 25/11/22.
//

import Foundation
import UIKit

class ReposViewController : UIViewController {
    
    var viewModel : ReposViewModel!
    let viewRepos = ReposView()
    var repos : [Repos]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViewRepos()
        DispatchQueue.main.async {
            self.viewModel.getRepos { result in
                self.repos = result
                self.viewRepos.tableView.reloadData()
            }
        }
    }
    
    override func loadView() {
        view = viewRepos
    }
    
    func setupViewRepos() {
        title = "Repos"
        viewRepos.tableView.backgroundColor = .systemBlue
        viewRepos.tableView.register(ReposTableViewCell.self, forCellReuseIdentifier: ReposTableViewCell.idCell)
        viewRepos.tableView.dataSource = self
        viewRepos.tableView.delegate = self
    }
}

extension ReposViewController: UITableViewDelegate {
    
}

extension ReposViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.repos?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: ReposTableViewCell.idCell, for: indexPath) as? ReposTableViewCell {
            
            if let repo = self.repos?[indexPath.row] {
                cell.populate(repos: repo)
            }

            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    
}

