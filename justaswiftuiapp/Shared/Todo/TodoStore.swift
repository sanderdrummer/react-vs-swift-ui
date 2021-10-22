import Combine
import Foundation

struct Todo: Identifiable {
    let id: UUID
    let title: String
    let done: Bool
}

class TodoStore: ObservableObject {
    @Published var todos = [Todo]()

    func addTodo(_ todo: Todo) {
        todos.append(todo)
    }

    func removeTodo(_ todo: Todo) {
        todos = todos.filter { todo.id != $0.id }
    }

    func toggleDone(_ todo: Todo) {
        todos = todos.map {
            todo.id == $0.id ? Todo(id: todo.id, title: todo.title, done: !todo.done) : $0
        }
    }
}
