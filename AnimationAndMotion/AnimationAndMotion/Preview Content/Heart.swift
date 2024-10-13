//
//  Heart.swift
//  AnimationAndMotion
//
//  Created by Isabel Quijada on 30.09.24.
//
import SwiftUI
struct HeartBeatView: View {
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable() // Hace que la imagen sea escalable
            .aspectRatio(contentMode: .fit) // Mantiene la relación de aspecto
            .foregroundColor(.pink)
            .frame(width: 300, height: 300) // Establece un tamaño mínimo de 300x300 px
            .scaleEffect(scale)
            .onAppear {
                let baseAnimation = Animation.easeInOut(duration: 0.5)
                withAnimation(baseAnimation.repeatForever(autoreverses: true)) {
                    scale = 1.2
                }
            }
    }
}

#Preview {
    HeartBeatView()
}
