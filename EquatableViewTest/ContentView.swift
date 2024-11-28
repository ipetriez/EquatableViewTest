//
//  ContentView.swift
//  EquatableViewTest
//
//  Created by Sergey Petrosyan on 28.11.24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentTime = Date()
    @State private var counter = 0
    
    var body: some View {
        VStack {
            EquatableView(content: ChildView(counter: $counter))
            Text("Current time: \(currentTime)")
                .padding()
            Button("Increment Counter") {
                counter += 1
            }
        }
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                currentTime = Date()
            }
        }
    }
}

#Preview {
    ContentView()
}
