//
//  ContentView.swift
//  project1
//
//  Created by Jorge Robles on 10/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            let emojis = ["👻", "👯‍♀️", "👩🏼‍🚀", "🐮", "😎"]
            ForEach(emojis.indices, id: \.self) {
                index in CardView(content: emojis[index])
            }
            
            

        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = false //temporary state
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}
#Preview {
    ContentView()
}
