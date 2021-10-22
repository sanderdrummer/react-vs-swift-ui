//
//  Counter.swift
//  justaswiftuiapp (iOS)
//
//  Created by Tobias Pickel on 20.10.21.
//

import SwiftUI

struct Counter: View {
    @State var count = 0

    var body: some View {
        VStack {
            CounterComponent(count: count)
            Button(action: {
                count = count + 1
            }) {
                Text("Increment")
            }
        }
    }
}



struct Counter_Previews: PreviewProvider {
    static var previews: some View {
        Counter()
    }
}
