//
//  ContentView.swift
//  HomeWork32
//
//  Created by Дарья Дубровская on 4.04.22.
//

import SwiftUI

struct ContentView: View {

    @State private var sliderValueRed = Double.random(in: 0...255)
    @State private var sliderValueGreen = Double.random(in: 0...255)
    @State private var sliderValueBlue = Double.random(in: 0...255)
    @State private var sliderValueOpacity = Double.random(in: 0...1)
    @State private var valueRed = "sliderValueRed"


    var body: some View {
        VStack {
            Text("Red")
                .foregroundColor(.red)
            ColorSlider(value: $sliderValueRed, textColor: .red)
                .padding()

            Text("Green")
                .foregroundColor(.green)
            ColorSlider(value: $sliderValueGreen, textColor: .green)
                .padding()

            Text("Blue")
                .foregroundColor(.blue)
            ColorSlider(value: $sliderValueBlue, textColor: .gray)
                .padding()
        }

        VStack {
            ColorCircle(color: Color(red: sliderValueRed / 255, green: sliderValueGreen / 255, blue: sliderValueBlue / 255), opacity: sliderValueOpacity)
        }
        VStack {
            Text("Opacity")
                .foregroundColor(.black)
            OpacitySlider(value: $sliderValueOpacity, textColor: .brown)
                .padding()
        }
        Spacer()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColorSlider: View {

    @Binding var value: Double

    var textColor: Color

    var body: some View {
        HStack {
            Text("0").foregroundColor(textColor)
            Slider(value: $value, in: 0...255, step: 1)
                .background(textColor)
                .cornerRadius(40)
            Text("\(lround(value))").foregroundColor(textColor)
        }.padding(.horizontal)
    }
}

struct OpacitySlider: View {

    @Binding var value: Double

    var textColor: Color

    var body: some View {
        HStack {
            Text("0").foregroundColor(textColor)
            Slider(value: $value, in: 0...1)
                .background(textColor)
                .cornerRadius(40)
            Text("\(NSString(format: "%.1f", (round(value * 10) / 10)))").foregroundColor(textColor)
        }.padding(.horizontal)
    }
}

//struct BorderedViewModifaer: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//           .overlay(RoundedRectangle(cornerRadius: 9)
//                .stroke(lineWidth: 1)
//                .foregroundColor(.black)
//            )
//    }
//}
//
//extension TextField {
//    func bordered() -> some View {
//        ModifiedContent(content: self, modifier: BorderedViewModifaer())
//    }
//}



