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

        
        let ship1 = Ship(name: "Eleven", age: 9)
        let ship2 = Ship(name: "Big Ship", age: 5)
        let ship3 = Ship(name: "Titanic", age: 2)
        let ship4 = Ship(name: "RowBoat", age: 7)
        
        bin.ships = [ship1, ship2, ship3, ship4]
        
        bin.sortShips()
        
        
        let book1 = Book(name: "Gone With the Wine", year: 1929, author: "Margaret Mitchell")
        let book2 = Book(name: "Pride and Prejudice", year: 1815, author: "Jane Austen")
        let book3 = Book(name: "Alice In Wonderland", year: 1850, author: "Lewis Carroll")
        
        bin.books = [book1, book2, book3]
        
        bin.sortBooks()
        
        
        
        let cd1 = MusicCD(name: "Reasonable Doubt", year: 1996, songs: ["Brooklyn's Finest", "Can't Knock the Hustle"])
        let cd2 = MusicCD(name: "No Way Out", year: 1997, songs: ["Victory", "Been Around the World"])
        let cd3 = MusicCD(name: "Drake", year: 2010, songs: ["Light Up", "Best I Ever Had"])
        
        bin.musicCDs = [cd1, cd2, cd3]
        
        bin.sortMusicCDs()
        
        
        
        let pin1 = BowlingPin(name: "PinC", film: "Harry Potter", color: .yellow)
        let pin2 = BowlingPin(name: "PinA", film: "Bridget Jones", color: .orange)
        let pin3 = BowlingPin(name: "PinB", film: "Star Wars", color: .red)
        
        bin.bowlingPins = [pin1, pin2, pin3]
        
        bin.sortBowlingPins()
        
        
        
    }
    
    
  
    

    
}
