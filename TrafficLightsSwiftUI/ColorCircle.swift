//
//  ColorCircle.swift
//  TrafficLightsSwiftUI
//
//  Created by Кукушкин Денис Сергеевич on 11.11.2022.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth:3))
            .opacity(opacity)
        
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 1)
    }
}
