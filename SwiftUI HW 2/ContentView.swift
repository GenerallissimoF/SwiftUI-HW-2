
//  ContentView.swift
//  SwiftUI HW 2
//
//  Created by Ivan Adoniev on 18.02.2022.


import SwiftUI

struct ContentView: View {
    
    @State var red = SliderValue(raw: Double.random(in: 0...255))
    @State var green = SliderValue(raw: Double.random(in: 0...255))
    @State var blue = SliderValue(raw: Double.random(in: 0...255))
    
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            VStack {
            Rectangle()
            .frame(width: 300, height: 100, alignment: .center)
            .cornerRadius(20)
            .foregroundColor(
                Color(.sRGB,
                      red: red.raw / 255,
                      green: green.raw / 255,
                      blue: blue.raw / 255,
                      opacity: 1)
            )
                SliderView(value: $red, color: .black)
                SliderView(value: $green, color: .green)
                SliderView(value: $blue, color: .blue)
            }
        }
       
    }
    
}
