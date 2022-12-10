//
//  ReposTableViewCell.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 10/12/22.
//

import Foundation
import UIKit

class ReposTableViewCell : UITableViewCell{
    
    static let idCell = "cellRepos"
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14.0, weight: .bold)
        label.textColor = .white
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func populate(repos: Repos) {
        nameLabel.text = repos.name

        setupUI()
        setupConstraints()
    }

    func setupUI() {
        self.backgroundColor = .systemBlue
        addSubview(nameLabel)
    }

    // MARK: - Setup Constraints
    func setupConstraints() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        nameLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
    }

}
