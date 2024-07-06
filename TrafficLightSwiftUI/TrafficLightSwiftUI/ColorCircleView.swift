//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Matvei Khlestov on 06.07.2024.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 150)
            .foregroundStyle(color)
            .opacity(opacity)
    }
}

#Preview {
    ColorCircleView(color: .red, opacity: 1)
}
