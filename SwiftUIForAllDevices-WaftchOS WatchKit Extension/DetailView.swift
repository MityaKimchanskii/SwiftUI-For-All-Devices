//
//  DetailView.swift
//  SwiftUIForAllDevices-WaftchOS WatchKit Extension
//
//  Created by Mitya Kim on 7/24/22.
//

import SwiftUI

struct DetailView: View {
    
    let animal: Animal
    
    var body: some View {
        
        VStack {
            Text(animal.image)
                .font(.custom("Arial", size: 100))
            Text(animal.name)
            Text(animal.description)
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(animal: Animal(name: "Rabbit", description: "This is a rabbit", image: "🐇"))
    }
}
