//
//  OverviewController.swift
//  workoutApp
//
//  Created by Белов Руслан on 28/10/22.
//

import UIKit

class OverviewController: BaseController {

    private let navBar = OverviewNanBAr()


//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        title = Resouces.Strings.TitleVC.OverviewControllerTitle
//        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.overview
//    }
}

extension OverviewController {
    override func addViews() {
        super.addViews()


        view.addView(navBar)

    }

    override func layoutViews() {
        super.layoutViews()

        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            navBar.heightAnchor.constraint(equalToConstant: 113)
        ])
    }

    override func configure() {
        super.configure()


        navigationController?.navigationBar.isHidden = true

//        navBar.translatesAutoresizingMaskIntoConstraints = false

        
    }
}
