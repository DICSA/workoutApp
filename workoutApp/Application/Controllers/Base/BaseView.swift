//
//  BaseView.swift
//  workoutApp
//
//  Created by Белов Руслан on 03/12/22.
//

//MARK: - Файл для базовых методов и функций

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super .init(frame: frame)

        addViews()
        layoutViews()
        configure()

    }


    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BaseView {
    func addViews() {}
    func layoutViews() {}
    func configure() {}
}


