//
//  SettingsController.swift
//  workoutApp
//
//  Created by Белов Руслан on 15/11/22.
//

import UIKit

class SettingsController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = Resouces.Strings.TitleVC.SettingsControllerTitle
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.settings 
    }
}

