//
//  TableViewController.swift
//  Tableview-Xib
//
//  Created by Angika Singh on 2/18/21.
//

import UIKit

class TableViewController: UITableViewController {
    let cities = ["Seattle","Portland" , "SFO", "LA", "NY", "Miami"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        cell.lblCity.text = cities[indexPath.row]
        print(cities)
        print(cities[indexPath.row])
        return cell
    }
    



}
