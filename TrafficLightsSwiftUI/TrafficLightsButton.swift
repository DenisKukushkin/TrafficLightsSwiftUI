//
//  TrafficLightsButton.swift
//  TrafficLightsSwiftUI
//
//  Created by Кукушкин Денис Сергеевич on 11.11.2022.
//

import SwiftUI

struct TrafficLightsButton: View {
    let action: () -> Void
    let buttonText: String
    
    var body: some View {
        Button(action: action) {
            Text(buttonText)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 50)
        .background(.indigo)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 3))
        .shadow(color: .gray, radius: 5)
        
    }
    }

struct TrafficLightsButton_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightsButton(action: {}, buttonText: "HELLO")
    }
}
