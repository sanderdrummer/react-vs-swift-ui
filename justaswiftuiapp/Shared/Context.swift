//
//  Context.swift
//  justaswiftuiapp
//
//  Created by Tobias Pickel on 22.10.21.
//

import SwiftUI

class Config:ObservableObject {
    let magicNumber = 4
}

struct Context: View {
    var config = Config()
    var body: some View {
        VStack {
            Text("Context config is \(config.magicNumber)")
            Consumer()
            Consumer()
        }.environmentObject(config)
    }
}

struct Consumer: View {
    
    @EnvironmentObject var config: Config
    
    var body: some View {
        Text("Consumer config is \(config.magicNumber)")
    }
}

struct Context_Previews: PreviewProvider {
    static var previews: some View {
        Context()
    }
}
