//
//  TabBarController.swift
//  workoutApp
//
//  Created by Белов Руслан on 29/10/22.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        tabBar.tintColor = Resouces.Colors.active
        tabBar.barTintColor = Resouces.Colors.inActive
        tabBar.backgroundColor = .white

        //MARK: - Отвечает за полоску над таббаром 
        tabBar.layer.borderColor = Resouces.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true

        let overviewController = OverviewController()
        let progressviewController = ProgressController()
        let sessionviewController = SessionController()
        let settingsviewController = SettingsController()


        let overviewNavController = NavBarController(rootViewController: overviewController)
        let progressviewNavController = NavBarController(rootViewController: progressviewController)
        let sessionviewNavController = NavBarController(rootViewController: sessionviewController)
        let settingsviewNavController = NavBarController(rootViewController: settingsviewController)


        overviewNavController.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.overview,
                                                     image: Resouces.Images.TabBar.overview,
                                                     tag: Tabs.overview.rawValue)
        progressviewNavController.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.progress,
                                                            image: Resouces.Images.TabBar.progress,
                                                            tag: Tabs.progress.rawValue)
        sessionviewNavController.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.session,
                                                           image: Resouces.Images.TabBar.session,
                                                     tag: Tabs.session.rawValue)
        settingsviewNavController.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.settings,
                                                            image: Resouces.Images.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)
        setViewControllers([
            overviewNavController,
            progressviewNavController,
            sessionviewNavController,
            settingsviewNavController
        ],animated: false)
    }
}

