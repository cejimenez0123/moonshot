//
//  AstronautView.swift
//  Moonshot
//
//  Created by /fam on 2/2/21.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut

        var body: some View {
            GeometryReader { geometry in
                ScrollView(.vertical) {
                    VStack {
                        Image(self.astronaut.id)
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width)

                        Text(self.astronaut.description)
                            .padding()
                            .layoutPriority(0)
                    }
                }
            }
            .navigationBarTitle(Text(astronaut.name), displayMode: .inline)
        }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronauts : [Astronaut] = Bundle.main.decode("assets/astronauts.json")
    static var previews: some View {
        AstronautView(astronaut: astronauts[0])
    }
}
