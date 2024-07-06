//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Matvei Khlestov on 06.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonTitle = "START"
    @State private var currentLight: CurrentLight = .off
    
    var body: some View {
        ZStack {
            Color(.secondarySystemBackground)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                ColorCircleView(
                    color: .red,
                    opacity: currentLight == .red ? 1 : 0.3
                )
                ColorCircleView(
                    color: .yellow,
                    opacity: currentLight == .yellow ? 1 : 0.3
                )
                ColorCircleView(
                    color: .green,
                    opacity: currentLight == .green ? 1 : 0.3
                )
                
                Spacer()
                
                StartButtonView(title: buttonTitle, action: {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    nextColor()
                })
            }
            .padding()
        }
    }
}

// MARK: - Current Light
private extension ContentView {
    enum CurrentLight {
        case off, red, yellow, green
    }
}

// MARK: - Private Methods
private extension ContentView {
    func nextColor() {
        switch currentLight {
        case .off:
            currentLight = .red
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}

#Preview {
    ContentView()
}
