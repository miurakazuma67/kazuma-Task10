//
//  PrefectureTableViewCell.swift
//  Task10
//
//  Created by 三浦　一真 on 2021/05/22.
//

import UIKit

class PrefectureTableViewCell: UITableViewCell {

    @IBOutlet private weak var prefectureLabel: UILabel!
    @IBOutlet private weak var orderLabel: UILabel!
    
    static var identifier: String { String(describing: self) }
    static var nib: UINib { UINib(nibName: String(describing: self), bundle: nil) }

    private static let backgroundColors: [UIColor] = [
        .systemRed, .systemGreen, .systemBlue
    ]

    func configure(prefectureName: String, index: Int) {
        prefectureLabel?.text = prefectureName
        orderLabel?.text = "\(index + 1)番目の都道府県です"
        backgroundColor = Self.backgroundColors[index % Self.backgroundColors.count]
    }
}
