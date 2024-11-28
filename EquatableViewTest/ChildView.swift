//
//  ChildView.swift
//  EquatableViewTest
//
//  Created by Sergey Petrosyan on 28.11.24.
//

import SwiftUI

struct ChildView: View, Equatable {
    @Binding var counter: Int
    
    var body: some View {
        let result = heavyComputation()
        print("ChildView body evaluated with counter = \(counter)")
        
        return Text("Counter: \(counter), Computation: \(result)")
            .padding()
    }
    
    func heavyComputation() -> Int {
        sleep(1)
        return counter * 2
    }
    
    static func == (lhs: ChildView, rhs: ChildView) -> Bool {
        lhs.$counter.wrappedValue == rhs.$counter.wrappedValue
    }
}

#Preview {
    ChildView(counter: .constant(0))
}
