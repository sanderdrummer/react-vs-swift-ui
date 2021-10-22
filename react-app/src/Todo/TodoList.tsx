import { List, Toolbar, Typography, AppBar } from "@mui/material"
import { TodoForm } from "./TodoForm"
import { TodoItem } from "./TodoItem"
import { useTodos } from "./useTodos"

export const TodoList = () => {
  const { todos, addTodo, toggleTodo } = useTodos()
  return (
    <div>
      <AppBar position="static">
        <Toolbar
          sx={{
            display: "grid",
            gridTemplateColumns: "1fr min-content",
          }}
        >
          <Typography>Todo List</Typography>
          <TodoForm addTodo={addTodo} />
        </Toolbar>
      </AppBar>
      <List>
        {todos.map((todo) => (
          <TodoItem key={todo.id} todo={todo} toggleTodo={toggleTodo} />
        ))}
      </List>
    </div>
  )
}
