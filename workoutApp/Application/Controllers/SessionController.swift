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

        title = Resouces.Strings.TitleVC.SessionControllerTitle
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.session

        addNAvBarButton(at: .left, with: Resouces.Strings.Session.navBarLeft)
        addNAvBarButton(at: .right, with: Resouces.Strings.Session.navBarRight)

    } 
}
