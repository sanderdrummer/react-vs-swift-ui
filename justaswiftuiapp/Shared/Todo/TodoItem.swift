//
//  TodoItem.swift
//  justaswiftuiapp (iOS)
//
//  Created by Tobias Pickel on 20.10.21.
//

import SwiftUI

struct TodoItem: View {
    var todo: Todo
    var toggleTodo: (_ todo: Todo) -> Void
    var body: some View {
        Button(action: {
            toggleTodo(todo)
        }) {
            HStack {
                Text(todo.title)
                Spacer()
                if todo.done {
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}

struct TodoItem_Previews: PreviewProvider {
    static var previews: some View {
        TodoItem(todo: Todo(id: UUID(), title: "Just a test", done: true), toggleTodo: { (_: Todo) in
        })
    }
}
