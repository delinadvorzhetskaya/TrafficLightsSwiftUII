//
//  CircleLight.swift
//  TrafficLightsSwiftUI
//
//  Created by Дэлина Дворжецкая on 16.02.2022.
//

import SwiftUI

struct CircleLight: View {
    let color: Color
    
    var body: some View {
            Circle()
                .foregroundColor(color)
                .frame(width: 150, height: 150)
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 10)
    }
}

struct CircleLight_Previews: PreviewProvider {
    static var previews: some View {
        CircleLight(color: .red)
    }
}
