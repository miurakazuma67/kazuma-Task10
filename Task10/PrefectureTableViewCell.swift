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
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
