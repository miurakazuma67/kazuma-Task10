//
//  ViewController.swift
//  Task10
//
//  Created by 三浦　一真 on 2021/05/22.
//

import UIKit

class PrefectureViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let prefectures: [String] = [
        "北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県",
        "茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県",
        "新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県",
        "静岡県","愛知県","三重県","滋賀県","京都府","大阪府","兵庫県",
        "奈良県","和歌山県","鳥取県","島根県","岡山県","広島県","山口県",
        "徳島県","香川県","愛媛県","高知県","福岡県","佐賀県","長崎県",
        "熊本県","大分県","宮崎県","鹿児島県","沖縄県"
    ]
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(PrefectureTableViewCell.nib, forCellReuseIdentifier: PrefectureTableViewCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefectures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PrefectureTableViewCell.identifier, for: indexPath) as! PrefectureTableViewCell
        let color: UIColor
        let index = indexPath.row
        cell.prefectureLabel?.text = prefectures[index]
        cell.orderLabel?.text = "\(index + 1)番目の都道府県です"
        
        switch index % 3 {
        case 0:
            color = UIColor.systemRed
        case 1:
            color = UIColor.systemGreen
        default:
            color = UIColor.systemBlue
        }
        
        cell.backgroundColor = color
        return cell
    }
}

