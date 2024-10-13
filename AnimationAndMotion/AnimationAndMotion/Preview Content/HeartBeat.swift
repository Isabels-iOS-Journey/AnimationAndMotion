//
//  Untitled.swift
//  AnimationAndMotion
//
//  Created by Isabel Quijada on 30.09.24.
//

import SwiftUI

struct HeartBeatViews: View {
    @State private var scale: CGFloat = 1
    
    var body: some View {
        Image(systemName: "heart.fill")
            .foregroundColor(.red)
            .scaleEffect(scale)
//            .rotationEffect(.degrees(100))
            .opacity(0.5)
            .offset(x: 100, y: 100)
            .onAppear {
                let baseAnimation = Animation
                    .easeInOut(duration: 0.5)
                withAnimation(
                    baseAnimation.repeatForever(autoreverses: true)) {
                        scale = 1.2
                    }
            }
    }
}

#Preview {
    HeartBeatViews()
}
