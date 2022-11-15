//
//  NavBarController.swift
//  workoutApp
//
//  Created by Белов Руслан on 11/11/22.
//

import UIKit

final class NavBarController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }


    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resouces.Colors.titleGray,
            .font: Resouces.Fonts.helvetica(with: 17)
        ]

        navigationBar.addBottomBorder(with: Resouces.Colors.separator, height: 1)
    }

}
