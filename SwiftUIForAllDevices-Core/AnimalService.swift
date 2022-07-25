//
//  AnimalService.swift
//  SwiftUIForAllDevices
//
//  Created by Mitya Kim on 7/24/22.
//

import Foundation


class AnimalService {
    
    static func getAll() -> [Animal] {
        
        return [
            Animal(name: "Tiger", description: "This is a tiger", image: "🐅"),
            Animal(name: "Rat", description: "This is a rat", image: "🐀"),
            Animal(name: "Giraffe", description: "This is a giraffe", image: "🦒"),
            Animal(name: "Dog", description: "This is a dog", image: "🐕"),
            Animal(name: "Cat", description: "This is a cat", image: "🐈"),
            Animal(name: "Chicken", description: "This is a chicken", image: "🐓"),
            Animal(name: "Gorilla", description: "This is a gorilla", image: "🦍")
        ]
    }
}

