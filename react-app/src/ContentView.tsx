import { BottomNavigation, BottomNavigationAction, Box } from "@mui/material"
import { List, Favorite, ConfirmationNumber } from "@mui/icons-material"
import { useState } from "react"
import { Counter } from "./Counter/Counter"
import { TodoList } from "./Todo/TodoList"
import { Pokedex } from "./Pokedex/Pokedex"

enum Tabs {
  counter = "counter",
  todo = "todo",
  pokedex = "pokedex",
}
export const ContentView = () => {
  const [tab, setTab] = useState<Tabs>(Tabs.counter)
  return (
    <Box
      sx={{
        height: "100vh",
        display: "grid",
        gridTemplateRows: "1fr min-content",
      }}
    >
      {tab === Tabs.counter && <Counter />}
      {tab === Tabs.todo && <TodoList />}
      {tab === Tabs.pokedex && <Pokedex />}
      <BottomNavigation
        showLabels
        value={tab}
        onChange={(_event, tab) => {
          setTab(tab)
        }}
      >
        <BottomNavigationAction
          value={Tabs.counter}
          label="Counter"
          icon={<ConfirmationNumber />}
        />
        <BottomNavigationAction
          value={Tabs.todo}
          label="Todo"
          icon={<List />}
        />
        <BottomNavigationAction
          value={Tabs.pokedex}
          label="Pokedex"
          icon={<Favorite />}
        />
      </BottomNavigation>
    </Box>
  )
}
