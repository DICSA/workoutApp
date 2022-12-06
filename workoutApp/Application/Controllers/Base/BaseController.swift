//
//  BaseController.swift
//  workoutApp
//
//  Created by Белов Руслан on 12/11/22.
//

import UIKit

//MARK: - в данном base мы реализуем базовые функции 

enum NavBarPosition {
    case left
    case right
}

class BaseController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        layoutViews()
        configure()
    }
}

//MARK: - это базовый контроллер для настройки view
@objc extension BaseController {

    // В данном случае я просто объявляю, что все функции в этом расширении являются @objc. Не objc функции нельзя переопределить в дочерних классах или использовать, как Selector в addTarget для кнопки или gestureRecogniser.

    func addViews() {}

    func layoutViews() {}
    
    func configure() {
        view.backgroundColor = Resouces.Colors.background
    }

    func navBarLeftButtonHandler() {
        print("NavBar left button tapped")
    }

    func navBarRightButtonHandler() {
        print("NavBar right button tapped")
    }
}


extension BaseController {
    func addNAvBarButton(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resouces.Colors.active, for: .normal)
        button.setTitleColor(Resouces.Colors.inActive , for: .disabled)
        button.titleLabel?.font = Resouces.Fonts.helvetica(with: 17)


        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
