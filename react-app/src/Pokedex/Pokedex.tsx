import { Box, ListItem, ListItemButton, ListItemText } from "@mui/material"
import { useEffect, useState } from "react"
import { BrowserRouter as Router, Link, Route } from "react-router-dom"
import { Pokedetails } from "./Pokedetails"

export type Pokemon = {
  name: string
  url: string
}

type PokemonResponse = {
  results: Pokemon[]
}

const fetchPokemon = async (): Promise<Pokemon[]> => {
  try {
    const maybeJson = await fetch("https://pokeapi.co/api/v2/pokemon?limit=100")
    const response = await maybeJson.json()
    return response.results
  } catch {
    // actually handle the error
  }
  return []
}

export const Pokedex = () => {
  const [pokemon, setPokemon] = useState<Pokemon[]>([])

  useEffect(() => {
    fetchPokemon().then((fetchedPokemon) => setPokemon(fetchedPokemon))
  }, [])

  return (
    <Box>
      <Router>
        <Route exact path="/">
          <Box>
            {pokemon.map((pokemon) => (
              <ListItem key={pokemon.name}>
                <ListItemButton to={pokemon.name} component={Link}>
                  <ListItemText>{pokemon.name}</ListItemText>
                </ListItemButton>
              </ListItem>
            ))}
          </Box>
        </Route>
        <Route exact path="/:name">
          <Pokedetails />
        </Route>
      </Router>
    </Box>
  )
}
