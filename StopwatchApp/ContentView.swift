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
            Color(UIColor.red)
                .ignoresSafeArea()
            
            // Second layer
            VStack {
                Text("00:09.96")
                    .foregroundColor(.white)
                    .font(.system(size: 90).weight(.thin))
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
