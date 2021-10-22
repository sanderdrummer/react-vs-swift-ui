import { Typography } from "@mui/material"

export const CounterComponent = ({ count = 2 }) => {
  return (
    <Typography sx={{ padding: "1rem" }}>
      You clicked the counter {count} times
    </Typography>
  )
}
