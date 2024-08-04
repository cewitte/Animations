//
//  ContentView.swift
//  Animations
//
//  Created by Carlos Eduardo Witte on 31/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 1, y: 1, z: 1)
        )
    }
}

#Preview {
    ContentView()
}
