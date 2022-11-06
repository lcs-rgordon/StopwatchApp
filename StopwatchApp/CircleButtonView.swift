//
//  CircleButtonView.swift
//  StopwatchApp
//
//  Created by Russell Gordon on 2022-11-06.
//

import SwiftUI

struct CircleButtonView: View {
    
    // MARK: Stored properties
    let buttonColor: Color
    let label: String
    let labelColor: Color
    
    // MARK: Computed properties
    
    // Interface to show the button
    var body: some View {
        ZStack {
            
            // First layer
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 100)
            
            // Second layer
            Circle()
                .foregroundColor(Color.black)
                .frame(width: 93)
                
            // Third layer
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 89)
            
            // Fourth layer
            Text(label)
                .foregroundColor(labelColor)
                .font(.title2)

        }
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonView(buttonColor: Color("DarkGrey"),
                         label: "Reset",
                         labelColor: .white)
    }
}
