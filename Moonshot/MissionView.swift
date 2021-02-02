//
//  MissionView.swift
//  Moonshot
//
//  Created by /fam on 1/29/21.
//

import SwiftUI

struct MissionView: View {
    let mission: Mission
    var astronauts: [CrewMember]
    struct CrewMember{
        let role:String
        let astronaut:String
    }
    var body: some View {
               GeometryReader { geometry in
                   ScrollView(.vertical) {
                       VStack {
                           Image(self.mission.image)
                               .resizable()
                               .scaledToFit()
                               .frame(maxWidth: geometry.size.width * 0.7)
                               .padding(.top)

                           Text(self.mission.description)
                               .padding()

                           Spacer(minLength: 25)
                       }
                   }
               }
               .navigationBarTitle(Text(mission.displayName), displayMode: .inline)
           }
    init(mission: Mission,astronauts:[Astronaut]){
        self.mission = mission
        var matches = [CrewMember]()
        for member in mission.crew {
               if let match = astronauts.first(where: { $0.id == member.name }) {
                print(match)
                matches.append(CrewMember(role: member.role, astronaut: match.name))
               } else {
                   fatalError("Missing \(member)")
               }
           }

           self.astronauts = matches
       }
}


struct MissionView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("assets/missions.json")
    static let astronauts: [Astronaut] = Bundle.main.decode("assets/astronauts.json")
    static var previews: some View {
        MissionView(mission:missions[0],astronauts: astronauts)
    }
}
