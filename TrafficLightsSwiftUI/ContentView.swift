//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Кукушкин Денис Сергеевич on 02.02.2023.
//

import SwiftUI

enum Lights {
    case red, yellow, green
}

struct ContentView: View {
    @State private var opacityRed = 0.3
    @State private var opacityYellow = 0.3
    @State private var opacityGreen = 0.3
    
    @State private var buttonText = "START"
    @State private var lightIsOn = Lights.red
    
    private func changeLight() {
        
        if buttonText == "START" {
            buttonText = "NEXT"
        }
        
        switch lightIsOn {
        case .red:
            opacityRed = 1.0
            opacityGreen = 0.3
            lightIsOn = .yellow
        case .yellow:
            opacityYellow = 1.0
            opacityRed = 0.3
            lightIsOn = .green
        case .green:
            opacityGreen = 1.0
            opacityYellow = 0.3
            lightIsOn = .red
        }
    }
    
    private func stopLights() {
        buttonText = "START"
        opacityRed = 0.3
        opacityYellow = 0.3
        opacityGreen = 0.3
        lightIsOn = .red
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
                    SwitchLightsButton(action: changeLight, buttonText: buttonText)
                    Spacer()
                    SwitchLightsButton(action: stopLights, buttonText: "STOP")
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
