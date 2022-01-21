//
//  ContentView.swift
//  TrafficLight
//
//  Created by xubuntus on 19.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redOpacity = 0.25
    @State private var yellowOpacity = 0.25
    @State private var greenOpacity = 0.25
    @State private var buttonTitle = "START"
    @State private var tapNumber = 0
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                CircleView(opacity: redOpacity, color: .red)
                CircleView(opacity: yellowOpacity, color: .yellow)
                CircleView(opacity: greenOpacity, color: .green)
                Spacer()
                NextButtonView(action: pressButton, buttonTitle: buttonTitle)
            }
        }
    }
    
    private func pressButton() {
        changeLight()
        switch tapNumber {
        case 0:
            buttonTitle = "NEXT"
            tapNumber = 2
        case 1:
            tapNumber += 1
        case 2:
            tapNumber += 1
        default:
            tapNumber = 1
        }
    }
    
    private func changeLight() {
        switch tapNumber {
        case 0, 1:
            redOpacity = 1
            yellowOpacity = 0.25
            greenOpacity = 0.25
        case 2:
            redOpacity = 0.25
            yellowOpacity = 1
            greenOpacity = 0.25
        default:
            redOpacity = 0.25
            yellowOpacity = 0.25
            greenOpacity = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Mini"))
        }
    }
}
