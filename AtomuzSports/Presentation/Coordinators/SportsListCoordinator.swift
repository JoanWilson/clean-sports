//
//  SportsListCoordinator.swift
//  AtomuzSports
//
//  Created by Joan Wilson Oliveira on 12/10/22.
//

import Foundation
import UIKit

final class SportsListCoordinator: Coordinator {

    private(set) var childCoordinators: [Coordinator] = []

    private let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let sportsClient = SportsClient()
        let sportsListViewModel = SportsListViewModel(client: sportsClient, coordinator: self)
        let sportsListViewController = SportsListViewController(viewModel: sportsListViewModel)
        navigationController.setViewControllers([sportsListViewController], animated: false)
    }

    func showDetail(for sport: Sport) {
        let sportsDetailViewModel = SportsDetailViewModel()
        let sportsDetailViewController = SportsDetailViewController(viewModel: sportsDetailViewModel, sport: sport)
        navigationController.pushViewController(sportsDetailViewController, animated: true)

    }

}
