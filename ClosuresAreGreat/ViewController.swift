//
//  ViewController.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/24/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var bin = ToyBin()

        let ship1 = Ship(name: "Titanic", age: 2)
        let ship2 = Ship(name: "Big Ship", age: 5)
        let ship3 = Ship(name: "Eleven", age: 9)
        
        bin.ships = [ship1, ship2, ship3]
        
        bin.sortShips()
        
        
        
        
        
        
        
        
        
        
    }
    
  
    

    
}
