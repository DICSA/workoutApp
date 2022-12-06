//
//  ProgressController.swift
//  workoutApp
//
//  Created by Белов Руслан on 15/11/22.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = Resouces.Strings.TitleVC.ProgressControllerTitle
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.progress

        addNAvBarButton(at: .left, with: Resouces.Strings.Progress.navBarLeft)
        addNAvBarButton(at: .right, with: Resouces.Strings.Progress.navBarRight)
    }
}

