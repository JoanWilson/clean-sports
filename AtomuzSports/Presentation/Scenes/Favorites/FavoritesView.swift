//
//  FavoritesView.swift
//  AtomuzSports
//
//  Created by Joan Wilson Oliveira on 19/10/22.
//

import UIKit

final class FavoritesView: UIView {

    lazy var sportsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(SportsTableViewCell.self, forCellReuseIdentifier: SportsTableViewCell.indentifier)
        tableView.separatorColor = .clear
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 40, right: 0)
        tableView.translatesAutoresizingMaskIntoConstraints = false

        return tableView
    }()

    override func layoutSubviews() {
        super.layoutSubviews()
        self.buildLayout()
    }

}

extension FavoritesView: ViewCoding {
    func setupView() {
        self.backgroundColor = .white

    }

    func setupHierarchy() {
        self.addSubview(self.sportsTableView)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            self.sportsTableView.topAnchor.constraint(equalTo: self.topAnchor),
            self.sportsTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.sportsTableView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.sportsTableView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}
