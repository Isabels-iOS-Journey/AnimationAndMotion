//
//  ContentView.swift
//  AnimationAndMotion
//
//  Created by Isabel Quijada on 30.09.24.
//

import SwiftUI

struct ContentView: View {
    @State var rotation: Double = 0
    
    var body: some View {
        Image(systemName: "house.fill")
            .rotationEffect(.degrees(rotation))
            .onAppear {
                withAnimation(Animation.linear(duration: 1)
                    .repeatForever(autoreverses: false)){
                        rotation = 360
                    }
            }
    }
}

#Preview {
    ContentView()
}
