//
//  ReposView.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 10/12/22.
//

import Foundation
import UIKit

class ReposView: UIView {

    let tableView: UITableView

    override init(frame: CGRect) {
        tableView = UITableView()

        super.init(frame: frame)

        setupUI()
        setupConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupUI() {
        addSubview(tableView)
    }

    func setupConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    }

}
