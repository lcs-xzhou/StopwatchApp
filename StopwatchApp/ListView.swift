//
//  ListView.swift
//  StopwatchApp
//
//  Created by Fiona ZHOU on 2023-10-31.
//

import SwiftUI

struct ListView: View {
    
    let text1: String
    let text2: String
    let textColor: Color
    
    var body: some View {
            HStack {
                Text(text1)
                Spacer()
                Text(text2)
            }
            .foregroundColor(textColor)
    }
}

#Preview {
    VStack {
        ListView(
            text1: "Lap 5",
            text2: "00.0",
            textColor: .white
        )
        ListView(
            text1: "Lap 4",
            text2: "00.0",
            textColor: .white
        )
    }
}
