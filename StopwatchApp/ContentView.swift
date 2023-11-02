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
                
                Spacer()
                
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
                
                // List of times
                List {
                    Group {
                        ListView(
                            text1: "Lap 5",
                            text2: "00:00.98",
                            textColor: .white
                        )
                        ListView(
                            text1: "Lap 4",
                            text2: "00:04.08",
                            textColor: Color("Dark Red 1")
                        )
                        ListView(
                            text1: "Lap 3",
                            text2: "00:00.96",
                            textColor: Color("Dark Green 1")
                        )
                        ListView(
                            text1: "Lap 2",
                            text2: "00:02.76",
                            textColor: .white
                        )
                        ListView(
                            text1: "Lap 1",
                            text2: "00:01.16",
                            textColor: .white
                        )
                    }
                    // Remove inset from list items
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                // Adjust the color of the separator to match the design
                .listRowSeparatorTint(Color("Black Gray"))
                // Adjust the size of the texts
                .font(.system(size: 20))
                // Set the amount of vertical height we want this list to take up
                .frame(height: 265)
                // Adjust list style to match design
                .listStyle(.plain)
                    }
            }
        }
    }
    
#Preview {
    TabView(selection: Binding.constant(3)) {
        
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
