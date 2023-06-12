//
//  ViewController.swift
//  TableView
//
//  Created by Qodir on 12.06.2023.
//  Copyright © 2023 Qodir. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
let tableViewArray = ["Rustam","Fazilat", "Amir", "Alixan", "Latifa","Hayitbek","Shoxrux"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.nameLabel.text = self.tableViewArray[indexPath.row]
        return cell
    }
    
}

