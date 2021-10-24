//
//  ContentView.swift
//  AccessibilityTraining
//
//  Created by Alex Oliveira on 24/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var score = 1000
    
    var body: some View {
        VStack{
            Text("Your score is")
            Text(String(score))
                .font(.title)
                .onTapGesture {
                    score += 1
                }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(Text("Your score is \(String(score))"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
