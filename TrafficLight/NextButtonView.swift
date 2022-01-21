//
//  NextButtonView.swift
//  TrafficLight
//
//  Created by xubuntus on 21.01.2022.
//

import SwiftUI

struct NextButtonView: View {
    var action: () -> Void
    var buttonTitle: String
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        Button(action: { action() }) {
                ZStack {
                    Color(.sRGB, red: 0.1, green: 0.4, blue: 0.99)
                    Text(buttonTitle)
                        .foregroundColor(.white)
                        .font(.title)
                }
            }
            .frame(width: width / 2, height: width / 7)
            .clipShape(RoundedRectangle(cornerRadius: width / 20))
            .overlay(RoundedRectangle(cornerRadius: width / 20).stroke(Color.white, lineWidth: width / 100))
    }
    
    
}

struct NextButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NextButtonView(action: {}, buttonTitle: "START")
    }
}
