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
                
                
                Spacer()
                
                Text("00:09.96")
                    .foregroundColor(Color.white)
                    .font(.system(size: 90).weight(.thin))
                
                Spacer()
                
                // Both buttons
                HStack {
                    CircleButtonView(buttonColor: Color("DarkGrey"),
                                     label: "Reset",
                                     labelColor: .white)
                    
                    Spacer()
                    
                    CircleButtonView(buttonColor: Color("DarkGreen"),
                                     label: "Start",
                                     labelColor: Color("LightGreen"))
                }
                
                List {
                    Group {
                        Text("1")
                        Text("2")
                        Text("3")
                        Text("4")
                        Text("5")
                    }
                    // Set row background color
                    .listRowBackground(Color.black)
                    // Foreground colour for text
                    .foregroundColor(.white)
                    // Set text size
                    .font(.title3)
                    // Adjust separator
                    .listRowSeparatorTint(.gray)
                    // Remove inset from list items
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

                }
                // Adjust list style to match design
                .listStyle(.plain)
                // Set the amount of vertical height we want this list to take up
                .frame(height: 300)
                // Hide white background for list
                .scrollContentBackground(.hidden)


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
