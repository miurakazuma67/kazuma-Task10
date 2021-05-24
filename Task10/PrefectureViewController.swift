//
//  ViewController.swift
//  Task10
//
//  Created by 三浦　一真 on 2021/05/22.
//

import UIKit

class PrefectureViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
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

