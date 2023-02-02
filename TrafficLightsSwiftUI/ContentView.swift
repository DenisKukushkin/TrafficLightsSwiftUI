//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Кукушкин Денис Сергеевич on 09.11.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var opacityRed = 0.3
    @State private var opacityYellow = 0.3
    @State private var opacityGreen = 0.3
    
    @State private var buttonText = "START"
    @State private var currentLight = CurrentLight.red
    
    private func switchLight() {
        
        if buttonText == "START" {
            buttonText = "NEXT"
        }
        
        switch currentLight {
        case .red:
            opacityRed = 1.0
            opacityGreen = 0.3
            currentLight = .yellow
        case .yellow:
            opacityYellow = 1.0
            opacityRed = 0.3
            currentLight = .green
        case .green:
            opacityGreen = 1.0
            opacityYellow = 0.3
            currentLight = .red
        }
    }
    
    private func stopLights() {
        buttonText = "START"
        opacityRed = 0.3
        opacityYellow = 0.3
        opacityGreen = 0.3
        currentLight = .red
    }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack (spacing: 15) {
                ColoredCircle(color: .red, opacity: opacityRed)
                ColoredCircle(color: .yellow, opacity: opacityYellow)
                ColoredCircle(color: .green, opacity: opacityGreen)
                Spacer()
                HStack {
                    TrafficLightsButton(action: switchLight, buttonText: buttonText)
                    Spacer()
                    TrafficLightsButton(action: stopLights, buttonText: "STOP")
                }
                .padding()
            }
            .padding()
        }
    }
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
