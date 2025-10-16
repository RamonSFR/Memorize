//
//  ContentView.swift
//  Memorize
//
//  Created by Ramon Sávio Fontes Rocha on 16/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                cardView(isFaceUp: false)
            }
        }
            .foregroundColor(.orange)
            .padding()
            .font(Font.largeTitle)
    }
}

struct cardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10).fill(.white)
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10).fill(.orange)
            }
        }
    }
}

#Preview {
    ContentView()
}
