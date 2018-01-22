//
//  RootViewController.swift
//  Coffee Shop Chooser
//
//  Created by Laurie Zipperer on 9/28/17.
//  Copyright © 2017 Codebase. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    var coffeeShops: [String] = []
    
    @IBOutlet weak var coffeeShopNameField: UITextField!
    

    @IBOutlet weak var chosenShopLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onDismissPress(_ sender: Any) {
        coffeeShopNameField.resignFirstResponder()
    }
    
    @IBAction func onCoffeeShopNameFieldReturn(_ sender: UITextField) {
        coffeeShops.append(sender.text!)
        print(coffeeShops)
        sender.text = ""
    }
    
    @IBAction func onCoffeeTimePressed(_ sender: UIButton) {
        let shopCount = coffeeShops.count
        let randomIndex = arc4random_uniform(UInt32(shopCount))
        let shop = coffeeShops[Int(randomIndex)]
        chosenShopLabel.text = "You're going to \(shop)!"
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let coffeeShopsVC = segue.destination as! CoffeeShopsViewController
         coffeeShopsVC.coffeeShops = coffeeShops
    }
    
}

