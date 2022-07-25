//
//  ContentView.swift
//  SwiftUIForAllDevices
//
//  Created by Mitya Kim on 7/24/22.
//

import SwiftUI

struct ContentView: View {
    
    private var animals = AnimalService.getAll()
    
    var body: some View {
        
        NavigationView {
            List(self.animals, id: \.name) { animal in
               
                NavigationLink(destination: DetailView(animal: animal)) {
                    HStack {
                        Text(animal.image)
                            .font(.custom("Arial", size: 100))
                        Text(animal.name)
                            .font(.title)
                    }
                }
                
            }
            .navigationBarTitle("Animals")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
