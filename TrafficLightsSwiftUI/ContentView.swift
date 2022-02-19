//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Дэлина Дворжецкая on 16.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonLabel = "Start"
    
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    @State private var lightColor: LightColor = .none
    
    private func nextColor() {
        switch lightColor {
        case .none:
            lightColor = .red
            fallthrough
        case .red:
            redOpacity = 1
            yellowOpacity = 0.3
            greenOpacity = 0.3
            
            lightColor = .yellow
        case .yellow:
            redOpacity = 0.3
            yellowOpacity = 1
            greenOpacity = 0.3
            
            lightColor = .green
        case .green:
            redOpacity = 0.3
            yellowOpacity = 0.3
            greenOpacity = 1
            
            lightColor = .red
        }
    }
    
    var body: some View {
        VStack(spacing: 25) {
            CircleLight(color: .red).opacity(redOpacity)
            CircleLight(color: .yellow).opacity(yellowOpacity)
            CircleLight(color: .green).opacity(greenOpacity)
            
            Spacer()
                .frame(height: 50)
            
            Button {
                buttonLabel = "Next"
                
                nextColor()
                
            } label: {
                Text(buttonLabel)
                    .font(.title)
            }
            

        }.padding()
        
        
    }
    
    
}

enum LightColor {
    case none
    case red
    case yellow
    case green
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
