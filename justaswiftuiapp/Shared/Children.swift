//
//  Children.swift
//  justaswiftuiapp
//
//  Created by Tobias Pickel on 22.10.21.
//

import SwiftUI

struct Card<Content: View>: View {
    @ViewBuilder let content: () -> Content

    var body: some View {
        VStack {
            content()
        }.padding().background(.indigo).foregroundColor(.white).cornerRadius(18)
    }
}

struct Test: View {
    var body: some View {
        Card {
            Text("Hi there I am a Child")
            Text("that's nice")
        }
    }
}

struct Children_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
