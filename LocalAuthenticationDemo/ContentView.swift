//
//  ContentView.swift
//  LocalAuthenticationDemo
//
//  Created by shmn7iii on 2022/12/07.
//

import SwiftUI

struct ContentView: View {
    @State var message = "Hello, world!"

    var body: some View {
        Text("\(message)")
            .multilineTextAlignment(.center)
        Button("LocalAuthentication") {
            LocalAuth().evaluate { result in
                message = result
            }
        }
        .padding()
        .accentColor(Color.white)
        .background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

