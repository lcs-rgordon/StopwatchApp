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
                ZStack {
                    
                    // First layer
                    Circle()
                        .foregroundColor(Color(UIColor.darkGray))
                        .frame(width: 100)
                    
                    // Second layer
                    Circle()
                        .foregroundColor(Color.black)
                        .frame(width: 93)
                        
                    // Third layer
                    Circle()
                        .foregroundColor(Color(UIColor.darkGray))
                        .frame(width: 89)
                    
                    // Fourth layer
                    Text("Reset")
                        .foregroundColor(.white)
                        .font(.title2)

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
