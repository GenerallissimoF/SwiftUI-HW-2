//
//  ContentView.swift
//  SwiftUI HW 2
//
//  Created by Ivan Adoniev on 18.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Rectangle()
            .frame(width: 300, height: 100, alignment: .center)
            .cornerRadius(20)
            .foregroundColor(.green)
        SliderView()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
