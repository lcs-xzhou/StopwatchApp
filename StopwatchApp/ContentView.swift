//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Fiona ZHOU on 2023-10-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            // First layer (background)
            Color.black
                .ignoresSafeArea()
            
            // Second layer (rest of interface)
            VStack {
                Text("00:09.96")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundColor(.white)
                
                // Creat a circular button
                HStack {
                    CircleButtonView(
                        buttonColor: Color("Dark Gray"),
                        label: "Reset",
                        labelColor: .white)
                    
                    Spacer()
                    
                    CircleButtonView(
                        buttonColor: Color("Dark Green"),
                        label: "Start",
                        labelColor: .green
                    )
                }
            }
            .padding()
        }
    }
}

#Preview {
    TabView {
        
        Text("World Clock")
            .tabItem {
                Image(systemName: "globe")
                Text("World Clock")
            }
        
        Text("Alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
        
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
        
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
    }
    // Change the accent color for the currently active tab item
    .accentColor(.orange)
    // Ensure tab items that are not active remain visible
    .preferredColorScheme(.dark)
}
