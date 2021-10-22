import { useState } from "react"

export type Todo = {
  id: string
  title: string
  done: boolean
}

export const useTodos = () => {
  const [todos, setTodos] = useState<Todo[]>([])

  const addTodo = (todo: Todo) => {
    setTodos((todos) => [...todos, todo])
  }

  const removeTodo = (todo: Todo) => {
    setTodos((todos) => todos.filter((maybeTodo) => maybeTodo.id !== todo.id))
  }

  const toggleTodo = (todo: Todo) => {
    setTodos((todos) =>
      todos.map((maybeTodo) =>
        maybeTodo.id === todo.id ? { ...todo, done: !todo.done } : maybeTodo
      )
    )
  }

  return {
    todos,
    addTodo,
    removeTodo,
    toggleTodo,
  }
}
