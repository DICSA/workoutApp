//
//  SessionController.swift
//  workoutApp
//
//  Created by Белов Руслан on 15/11/22.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.session

        addNAvBarButton(at: .left, with: "Pause")
        addNAvBarButton(at: .right, with: "Finish")

    } 
}
