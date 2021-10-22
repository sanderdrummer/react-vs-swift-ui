import { ListItem, ListItemButton, ListItemText } from "@mui/material"
import { Todo } from "./useTodos"
import CheckIcon from "@mui/icons-material/Check"

export const TodoItem = ({
  todo,
  toggleTodo,
}: {
  todo: Todo
  toggleTodo: (todo: Todo) => void
}) => {
  return (
    <ListItem>
      <ListItemButton onClick={() => toggleTodo(todo)}>
        <ListItemText>{todo.title}</ListItemText>
        {todo.done && <CheckIcon />}
      </ListItemButton>
    </ListItem>
  )
}
