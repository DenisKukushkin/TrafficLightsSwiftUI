//
//  ColoredCircle.swift
//  TrafficLightsSwiftUI
//
//  Created by Кукушкин Денис Сергеевич on 02.02.2023.
//

import SwiftUI

struct ColoredCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth:3))
            .opacity(opacity)
            .shadow(color: .white, radius: 5)
        
    }
}

struct ColoredCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColoredCircle(color: .indigo, opacity: 1)
    }
}
