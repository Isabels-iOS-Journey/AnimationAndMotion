//
//  Untitled.swift
//  AnimationAndMotion
//
//  Created by Isabel Quijada on 30.09.24.
//
import SwiftUI

struct LoadingView: View {
    @State private var rotation: Double = 0
    
    var body: some View {
        Image(systemName: "arrow.clockwise.circle")
            .rotationEffect(.degrees(rotation))
                .onAppear {
            withAnimation(Animation.linear(duration: 1)
                .repeatForever(autoreverses: false)) {
                    rotation = 360
            }
        }
    }
}

#Preview {
    LoadingView()
}
