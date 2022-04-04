//
//  ColorCircle.swift
//  HomeWork32
//
//  Created by Дарья Дубровская on 4.04.22.
//

import SwiftUI

struct ColorCircle: View {

    let color: Color
    let opacity: Double

    var body: some View {
        Circle()
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.black, lineWidth: 5))
            .frame(width: 300, height: 300)
            .opacity(opacity)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .white, opacity: 1)
    }
}
