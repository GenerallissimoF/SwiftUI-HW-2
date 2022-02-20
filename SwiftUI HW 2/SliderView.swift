//
//  SliderView.swift
//  SwiftUI HW 2
//
//  Created by Ivan Adoniev on 20.02.2022.
//

import SwiftUI

struct SliderValue {
    @State private var alertPresented = false
    let alert = Alert(title: Text("mmmm"), message: Text("uu"), dismissButton: .cancel())
    var raw: Double
    
    var text: String {
        get {
            return String(Int(raw))
        }
        set {
            if let a = Double(newValue) {
                self.raw = a
            } else {
               print("All is wrong")
                // что-то не смог придумать как сюда alert запихать
            }
        }
    }
}

struct SliderView: View {
    @Binding var value: SliderValue
   
    var color: Color?
    
    
    var body: some View {
        HStack {
            TextField("", text: $value.text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 60, height: 20, alignment: .center)
                .padding(.all, 10)
            Slider(value: $value.raw, in: 0...255)
                .accentColor(color)
            Text(value.text)
               
        }
        .padding(4)
    }

   
}


//struct SliderView_Previews: PreviewProvider {
//    static var previews: some View {
//        SliderView(value: SliderValue(raw: 0.0))
//    }
//}
