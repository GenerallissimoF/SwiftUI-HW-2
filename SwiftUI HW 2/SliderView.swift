//
//  SliderView.swift
//  SwiftUI HW 2
//
//  Created by Ivan Adoniev on 18.02.2022.
//

import SwiftUI

struct SliderView: View {
    
    @State private var sliderValue: Double = 50
    @State private var text: String = ""
    
    var body: some View {
        HStack {
           
    //   ??     Slider(value: Double(), in: 0...100)
            ValueTextField(sliderValue: $sliderValue, textFieldText: $text)
            
        }
        .padding(4)
    }
    func checkTextField() -> Double {
        if let value = Double(text) {
            sliderValue = value
            
        }
        return sliderValue
    }
}
struct ValueTextField: View {
    
    @Binding var sliderValue: Double
    @Binding var textFieldText: String
    
    var body: some View {
        
      TextField("", text: $textFieldText)
    }
    

       
    }
    


struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}

