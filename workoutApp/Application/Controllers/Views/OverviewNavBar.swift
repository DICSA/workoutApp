//
//  OverviewNavBar.swift
//  workoutApp
//
//  Created by Белов Руслан on 02/12/22.
//

// MARK: - Кастомный navBar

import UIKit

final class OverviewNanBAr: BaseView {

    private let titleLabel = UILabel()
    private let allWorkoutsButton = SecondaryButton()
    private let addButton = UIButton()


    private let weekView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue.withAlphaComponent(0.2)

        return view
    }()



    override func layoutSubviews() {
        super.layoutSubviews()
        //MARK: - Добавляет сипаратор 3нижнюю грань
        addBottomBorder(with: Resouces.Colors.separator, height: 1)
    }




    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }

    func addAdditingAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension OverviewNanBAr {
    override func addViews() {
        super.addViews()

        addView(titleLabel)
        addView(allWorkoutsButton)
        addView(addButton)
        addView(weekView)

    }
    override func layoutViews() {
        super.layoutViews()

        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),

            allWorkoutsButton.centerYAnchor.constraint(equalTo: addButton.centerYAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),

            titleLabel.centerYAnchor.constraint(equalTo: addButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),


            weekView.topAnchor.constraint(equalTo: allWorkoutsButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47)
        ])

    }
    override func configure() {
        super.configure()
        backgroundColor = .white

        //MARK: - translatesAutoresizingMaskIntoConstraints можно не ставить так как мы создали функцию func addView которая вкулючает в себя addView и translatesAutoresizingMaskIntoConstraints

//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = Resouces.Strings.TitleVC.OverviewControllerTitle
        titleLabel.textColor = Resouces.Colors.titleGray
        titleLabel.font = Resouces.Fonts.helvetica(with: 22)

//        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle(Resouces.Strings.Overview.allWorkoutButton)


//        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.setImage(Resouces.Images.Common.add_button, for: .normal)

//        weekView.translatesAutoresizingMaskIntoConstraints = false

    }
}
