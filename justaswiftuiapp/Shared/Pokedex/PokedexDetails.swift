//
//  PokedexDetails.swift
//  justaswiftuiapp (iOS)
//
//  Created by Tobias Pickel on 21.10.21.
//

import SwiftUI

struct PokedexDetails: View {
    var details: PokemonListEntry
    var body: some View {
        VStack {
            Text(details.url)
            
            Text("some fancy details could be shown here but I was to lacy to implement that ;)")
        }.navigationTitle(details.name)
    }
}

struct PokedexDetails_Previews: PreviewProvider {
    static var previews: some View {
        PokedexDetails(details:PokemonListEntry(name: "Pikachu", url: "some url"))
    }
}
