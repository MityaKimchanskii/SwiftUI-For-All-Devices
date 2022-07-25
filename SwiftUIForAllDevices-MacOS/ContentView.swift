//
//  ContentView.swift
//  SwiftUIForAllDevices-MacOS
//
//  Created by Mitya Kim on 7/24/22.
//

import SwiftUI

struct DetailView: View {
    let animal: Animal
    
    var body: some View {
        VStack {
            Text(animal.image)
                .font(.custom("Arial", size: 200))
            Text(animal.name)
            Text(animal.description)
        }
    }
}

struct AnimalList: View {
    
    @Binding var selectedAnimal: Animal?
    
    let animals = AnimalService.getAll()
    
    var body: some View {
        List(self.animals, id: \.name) { animal in
            VStack {
                Text(animal.image)
                    .font(.custom("Arial", size: 100))
                Text(animal.name)
            }.onTapGesture {
                self.selectedAnimal = animal
            }
            
        }
    }
}

struct ContentView: View {
    
    @State private var selectedAnimal: Animal? = nil
    
    var body: some View {
        
        NavigationView {
            
//            GeometryReader { g -> DetailView in
                AnimalList(selectedAnimal: self.$selectedAnimal)
//            }
            
//            GeometryReader { g -> DetailView in
                if let animal = selectedAnimal {
                    DetailView(animal: animal)
                } else {
                    DetailView(animal: Animal.placeholder)
                }
//            }
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
