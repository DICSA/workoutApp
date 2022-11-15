//
//  Resouces.swift
//  workoutApp
//
//  Created by Белов Руслан on 29/10/22.
//

import UIKit


//MARK: - Модель откуда мы берем данный в основной контроллер

enum Resouces {
    enum Colors {
        static var active = UIColor(hexString: "#447BFE")
        static var inActive = UIColor(hexString: "#929DA5")

        static var background = UIColor(hexString: "#F8F9F9")
        static var separator = UIColor(hexString: "#E8ECEF")
        
        static var titleGray = UIColor(hexString: "#545C77")

    }

    enum Strings {
        enum TabBar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress "
            static var settings = "Settings"
        }

    }

    enum Images {
        enum TabBar {
            static var overview = UIImage(named: "Overview_image")
            static var session =  UIImage(named: "Progress_image")
            static var progress = UIImage(named: "Session_image")
            static var settings = UIImage(named: "Settings_image")
        }
    }

    enum Fonts {
        static func helvetica(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
