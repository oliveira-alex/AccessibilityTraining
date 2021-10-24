//
//  ContentView.swift
//  AccessibilityTraining
//
//  Created by Alex Oliveira on 24/10/2021.
//

import SwiftUI

struct ContentView: View {
//    @State private var estimate = 25.0
    @State private var rating = 3
    
    var body: some View {
//        Slider(value: $estimate, in: 0...50)
//            .padding()
//            .accessibilityValue(Text("\(Int(estimate))"))
        Stepper("Rate our service: \(rating)/5", value: $rating, in: 1...5)
            .padding()
            .accessibilityElement(children: .combine)
            .accessibilityValue(Text("\(rating) out of 5"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
