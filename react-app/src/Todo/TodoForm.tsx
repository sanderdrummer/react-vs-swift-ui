import { Add } from "@mui/icons-material"
import {
  AppBar,
  Box,
  Button,
  Modal,
  TextField,
  Toolbar,
  Typography,
} from "@mui/material"
import { useState } from "react"
import { Todo } from "./useTodos"

export const TodoForm = ({ addTodo }: { addTodo: (todo: Todo) => void }) => {
  const [open, setOpen] = useState(false)
  const [title, setTitle] = useState("")
  const handleAddTodo = () => {
    addTodo({ id: new Date().toISOString(), title, done: false })
    setTitle("")
    setOpen(false)
  }
  return (
    <>
      <Button
        variant="outlined"
        sx={{ color: "white" }}
        onClick={() => setOpen(true)}
      >
        <Add />
      </Button>
      <Modal open={open} onClose={() => setOpen(false)}>
        <Box
          sx={{
            background: "white",
            position: "absolute" as "absolute",
            top: "50%",
            left: "50%",
            transform: "translate(-50%, -50%)",
            padding: "1rem",
            minWidth: "70%",
          }}
        >
          <form
            onSubmit={(e) => {
              e.preventDefault()
              handleAddTodo()
            }}
          >
            <Box
              sx={{
                marginBottom: "1rem",
                display: "grid",
                gridTemplateColumns: "1fr min-content",
              }}
            >
              <Typography>Add Modal</Typography>
              <Button type="submit">
                <Add />
              </Button>
            </Box>
            <Box>
              <TextField
                fullWidth
                value={title}
                onChange={(e) => setTitle(e.target.value)}
                label="Your Todo"
              />
            </Box>
          </form>
        </Box>
      </Modal>
    </>
  )
}
