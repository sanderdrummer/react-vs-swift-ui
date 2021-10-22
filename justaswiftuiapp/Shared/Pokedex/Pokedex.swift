import SwiftUI

struct PokemonResponse: Codable {
    let count: Int
    let next: String
    let results: [PokemonListEntry]
}

struct PokemonListEntry: Codable {
    let name: String
    let url: String
}

func fetchPokemonList() async -> [PokemonListEntry] {
    do {
        let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=100")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let response = try JSONDecoder().decode(PokemonResponse.self, from: data)
        return response.results
    } catch {
        // actually handle the error ;)
    }
    
    return [PokemonListEntry]()
}

struct Pokedex: View {
    @State var pokemonEntries = [PokemonListEntry]()

    var body: some View {
        NavigationView {
            List {
                ForEach(pokemonEntries, id: \.name) {
                    pokemon in
                    NavigationLink(pokemon.name, destination: PokedexDetails(details: pokemon))
                }
            }.navigationTitle("Pokedex")
        }.task {
            let response = await fetchPokemonList()
            pokemonEntries = response
        }
    }
}

struct Pokedex_Previews: PreviewProvider {
    static var previews: some View {
        Pokedex()
    }
}
