//
//  CircleButtonView.swift
//  StopwatchApp
//
//  Created by Fiona ZHOU on 2023-10-30.
//

import SwiftUI

struct CircleButtonView: View {
    
    // MARK: Stored properties
    let buttonColor: Color
    let label: String
    let labelColor: Color
    
    // MARK: Computed properties
    
    // Return the button's user interface
    var body: some View {
        ZStack {
            
            // First layer
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 100)
            
            // Second layer
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 93)
            
            // Third layer
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 89)
            
            // Fourth layer
            Text("Reset")
                .foregroundColor(labelColor)
                .font(.title2)
        }
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonView(
            buttonColor: .gray,
            label: "Reset",
            labelColor: .white)
    }
}
#Preview {
    ContentView()
}
