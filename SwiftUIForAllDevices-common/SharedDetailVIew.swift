//
//  SharedDetailVIew.swift
//  SwiftUIForAllDevices
//
//  Created by Mitya Kim on 7/24/22.
//

import SwiftUI

struct SharedDetailVIew: View {
    
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

struct SharedDetailVIew_Previews: PreviewProvider {
    static var previews: some View {
        SharedDetailVIew(animal: Animal(name: "Cat", description: "This is a cat", image: "🐈‍⬛"))
    }
}
