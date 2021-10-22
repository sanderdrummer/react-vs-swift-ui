import { Box, Button } from "@mui/material"
import { useState } from "react"
import { CounterComponent } from "./CounterComponent"

export const Counter = () => {
  const [count, setCount] = useState(0)
  return (
    <Box>
      <CounterComponent count={count} />
      <Button
        onClick={() => {
          setCount((count) => count + 1)
        }}
      >
        Increment
      </Button>
    </Box>
  )
}
