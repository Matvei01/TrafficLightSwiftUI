//
//  StartButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Matvei Khlestov on 06.07.2024.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .frame(width: 250, height: 60)
        .background(Color(.blue))
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    StartButtonView(title: "Start", action: {})
}
