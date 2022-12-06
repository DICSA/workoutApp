//
//  SecondaryButton.swift
//  workoutApp
//
//  Created by Белов Руслан on 15/11/22.
//

import UIKit

final class SecondaryButton: UIButton {

    private let label = UILabel()
    private let iconView = UIImageView()


    override init(frame: CGRect) {
        super.init(frame: frame)

        addViews()
        layoutView()
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

     func setTitle(_ title: String) {
        label.text = title
    }
}

private extension SecondaryButton {
    func addViews() {
        addView(label)
        addView(iconView)
    }

    func layoutView() {
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),


            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10)
        ])

    }
    func configure() {

        backgroundColor = Resouces.Colors.secondary
        layer.cornerRadius = 14
        makeSystem(self)
//MARK: - translatesAutoresizingMaskIntoConstraints можно не ставить так как мы создали функцию func addView которая вкулючает в себя addView и translatesAutoresizingMaskIntoConstraints
//        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = Resouces.Colors.active
        label.textAlignment = .center
        label.font = Resouces.Fonts.helvetica(with: 15)


//        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.image = Resouces.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = Resouces.Colors.active
    }

}
