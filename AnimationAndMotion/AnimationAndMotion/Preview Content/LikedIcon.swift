//
//  LikedIcon.swift
//  AnimationAndMotion
//
//  Created by Isabel Quijada on 30.09.24.
//
import SwiftUI

struct LikeButton: View {
    @State private var isLiked = false

    var body: some View {
        Button(action: {
            withAnimation {
                isLiked.toggle()
            }
        }) {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .foregroundColor(isLiked ? .red : .gray)
        }
        .scaleEffect(isLiked ? 1.3 : 1.0)
    }
}


#Preview {
    LikeButton()
}
