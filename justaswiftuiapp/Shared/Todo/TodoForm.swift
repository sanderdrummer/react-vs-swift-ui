//
//  TodoForm.swift
//  justaswiftuiapp (iOS)
//
//  Created by Tobias Pickel on 20.10.21.
//

import SwiftUI

struct TodoForm: View {
    @ObservedObject var store: TodoStore
    @State var presented = false
    @State var title = ""

    func addTodo() {
        store.addTodo(Todo(id: UUID(), title: title, done: false))
        title = ""
        presented.toggle()
    }

    var body: some View {
        Button(action: {
            presented.toggle()
        }) {
            Label("Add Todo", systemImage: "plus")
        }.sheet(isPresented: $presented) {
            NavigationView {
                VStack(alignment: .leading) {
                    TextField("Your Todo", text: $title, onCommit: addTodo
                    ).padding().textFieldStyle(.roundedBorder)
                    Spacer()
                }.navigationTitle("Add Todo").navigationBarTitleDisplayMode(.inline).toolbar {
                    Button(action: addTodo, label: {
                        Label("", systemImage: "plus")
                    })
                }
            }
        }
    }
}

struct TodoForm_Previews: PreviewProvider {
    static var previews: some View {
        TodoForm(store: TodoStore())
    }
}
