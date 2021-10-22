import { Box, Typography } from "@mui/material"
import { useParams } from "react-router-dom"

export const Pokedetails = () => {
  const { name = "" } = useParams<{ name: string }>()
  return (
    <Box>
      <Typography variant="h2">{name}</Typography>
      <Typography>
        some fancy details could be shown here but I was to lacy to implement
        that ;)
      </Typography>
    </Box>
  )
}
