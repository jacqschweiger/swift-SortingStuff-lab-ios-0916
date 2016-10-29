//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Ron Don Volante on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


struct ToyBin {
    
    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []

    
    mutating func sortShips() {
        ships = ships.sorted { (ship1: Ship, ship2: Ship) -> Bool in
            
            
            if ship1.name == "Titanic" {
                return true
            } else if ship2.name == "Titanic" {
                return false
            }
            
            
            return ship1.age > ship2.age
        }
        
        print(ships)
    }
    
    mutating func sortBooks() {
        books = books.sorted { return ($0.name < $1.name) }
        print(books)
    }


    mutating func sortBowlingPins() {
        bowlingPins = bowlingPins.sorted { return $0.color.rawValue < $1.color.rawValue }
        print(bowlingPins)
    }
    
    mutating func sortMusicCDs() {
        musicCDs = musicCDs.sorted { return $0.name > $1.name }
        
        for (index, cd) in musicCDs.enumerated() {
            if cd.name == "Drake" {
                musicCDs.remove(at: index)
                musicCDs.insert(cd, at: 0)
            }
        }
    }
    
    
    mutating func changeColorOfAllPins(to color: Color) {
        bowlingPins = bowlingPins.map { bowlingPin in
            var newPin = bowlingPin
            newPin.changeColor(to: color)
            return newPin
        }
    }
    
}


struct Ship: CustomStringConvertible {
    var name: String
    var age: Int
    
    var description: String {
        return "Name: \(name), Age: \(age)"
    }
}



struct Book: CustomStringConvertible {
    var name: String
    var year: Int
    var author: String
    
    var description: String {
        return "Name: \(name)"
    }
}


struct BowlingPin: CustomStringConvertible {
    var name: String
    var film: String
    var color: Color
    
    var description: String {
        return "BowlingPin color: \(color)"
    }
}


extension BowlingPin {
    mutating func changeColor(to color: Color) {
        self.color = color
    }
}


enum Color: Int {
    case red, orange, yellow, green, blue, indigo, violet
}

struct MusicCD: CustomStringConvertible {
    var name: String
    var year: Int
    var songs: [String]
    
    var description: String {
        return "CD name: \(name)"
    }
}
