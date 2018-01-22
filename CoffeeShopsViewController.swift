//
//  CoffeeShopsViewController.swift
//  Coffee Shop Chooser
//
//  Created by Laurie Zipperer on 9/28/17.
//  Copyright © 2017 Codebase. All rights reserved.
//

import Foundation

import UIKit

class CoffeeShopsViewController: UITableViewController{
    var coffeeShops: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        print(coffeeShops)
    
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffeeShops.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoffeeShopCell", for: indexPath)
        cell.textLabel?.text = coffeeShops[indexPath.row]
        print(indexPath.row)
        return cell
    }
}



