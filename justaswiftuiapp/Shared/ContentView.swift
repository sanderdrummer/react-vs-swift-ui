//
//  ContentView.swift
//  Shared
//
//  Created by Tobias Pickel on 20.10.21.
//

import SwiftUI

struct ContentView: View {
    enum Tab {
      case counter
      case todo
      case pokedex
    }
    
    @State var selection: Tab = .counter
    
    var body: some View {
        TabView(selection: $selection) {
            Counter().tabItem  {
                Label("Counter", systemImage: "number.circle")
            }.tag(Tab.counter)
            TodoList().tabItem{
                Label("Todo", systemImage: "list.star")
            }.tag(Tab.todo)
            Pokedex().tabItem{
                Label("Pokedex", systemImage: "heart.circle.fill")
            }.tag(Tab.pokedex)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
