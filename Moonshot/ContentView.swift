//
//  ContentView.swift
//  Moonshot
//
//  Created by /fam on 1/28/21.
//

import SwiftUI

struct ContentView: View {
    let astronauts = Bundle.main.decode("assets/astronauts.json")
    var body: some View {
        VStack{
        Text("Hello, world!")
            .padding()
        Text("astornauts \(astronauts.count)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
