//
//  CircleView.swift
//  TrafficLight
//
//  Created by xubuntus on 21.01.2022.
//

import SwiftUI

struct CircleView: View {
    var opacity: CGFloat
    var color: UIColor
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        Color(color)
            .opacity(opacity)
            .frame(width: width / 4, height: width / 4)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: width / 100))
            .padding(.bottom, width / 50)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(opacity: 1, color: .orange)
    }
}
