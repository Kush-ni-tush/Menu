//
//  ViewController.swift
//  TableViewController_1_1
//
//  Created by Nikita Kushner on 9/21/20.
//  Copyright © 2020 Nikita Kushner. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    let restaursntName = [
    "Балкан Гриль","Бочка","Вкусные истории","Дастархан","Speak Easy",
    
        "Индокитай","Классик","Bonsai","Шок","X.O",
        "Burger Heroes","Kitchen","Love&Life","Morris Pub","Sherlock Holmes"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaursntName.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = restaursntName[indexPath.row]
        cell?.imageView?.image = UIImage(named: restaursntName[indexPath.row])
        return cell!
    }

}

