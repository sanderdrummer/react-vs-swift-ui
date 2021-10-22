//
//  CounterComponent.swift
//  justaswiftuiapp (iOS)
//
//  Created by Tobias Pickel on 20.10.21.
//

import SwiftUI

struct CounterComponent: View {
   
    var count = 0
    var body: some View {
        Text("You clickd the counter \(count) times")
    }
}

struct CounterComponent_Previews: PreviewProvider {
    static var previews: some View {
        CounterComponent(count: 7)
    }
}
