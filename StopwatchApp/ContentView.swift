//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Russell Gordon on 2022-11-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // First layer
            Color.black
                .ignoresSafeArea()
            
            // Second layer
            VStack {
                
                Text("00:09.96")
                    .foregroundColor(Color.white)
                    .font(.system(size: 90).weight(.thin))
                
                // Create a circular button
                HStack {
                    CircleButtonView(buttonColor: Color("DarkGrey"),
                                     label: "Reset",
                                     labelColor: .white)
                    
                    Spacer()
                    
                    CircleButtonView(buttonColor: Color("DarkGreen"),
                                     label: "Start",
                                     labelColor: Color("LightGreen"))
                }

            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
