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

        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.progress

        addNAvBarButton(at: .left, with: "Export")
        addNAvBarButton(at: .right, with: "Details")
    }
}

