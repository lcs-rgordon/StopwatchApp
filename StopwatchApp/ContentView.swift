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
                        ListItemView(leadingText: "Lap 5",
                                     trailingText: "00:00.98",
                                     color: .white)
                        ListItemView(leadingText: "Lap 4",
                                     trailingText: "00:04.08",
                                     color: .red)
                        ListItemView(leadingText: "Lap 3",
                                     trailingText: "00:00.96",
                                     color: .green)
                        ListItemView(leadingText: "Lap 2",
                                     trailingText: "00:02.76",
                                     color: .white)
                        ListItemView(leadingText: "Lap 1",
                                     trailingText: "00:01.16",
                                     color: .white)
                    }
                    // Set row background color
                    .listRowBackground(Color.black)
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
        TabView(selection: Binding.constant(3)) {
            
            Text("World Clock")
                .tabItem {
                    Image(systemName: "globe")
                    Text("World Clock")
                }
                .tag(1)
            
            Text("Alarm")
                .tabItem {
                    Image(systemName: "alarm.fill")
                    Text("Alarm")
                }
                .tag(2)

            ContentView()
                .tabItem {
                    Image(systemName: "stopwatch.fill")
                    Text("Stopwatch")
                }
                .tag(3)
            
            Text("Timer")
                .tabItem {
                    Image(systemName: "timer")
                    Text("Timer")
                }
                .tag(2)

        }
        // Highlighted tab is orange
        .accentColor(.orange)
        // Ensure non-selected tab is visible
        .preferredColorScheme(.dark)
    }
}
