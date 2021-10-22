//
//  TodoList.swift
//  justaswiftuiapp (iOS)
//
//  Created by Tobias Pickel on 20.10.21.
//

import SwiftUI

struct TodoList: View {
    @StateObject var store = TodoStore()

    var body: some View {
        
        NavigationView {
            List(store.todos) { todo in
                TodoItem(todo: todo, toggleTodo: store.toggleDone).swipeActions {
                    Button(action: {
                        store.removeTodo(todo)
                    }) {
                        Image(systemName: "minus")
                    }.tint(.red)
                }
            }.navigationTitle("Todos").navigationBarTitleDisplayMode(.inline).toolbar {
                TodoForm(store: store).padding()
            }
        }
    }
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList()
    }
}
