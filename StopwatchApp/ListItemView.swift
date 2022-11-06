//
//  ListItemView.swift
//  StopwatchApp
//
//  Created by Russell Gordon on 2022-11-06.
//

import SwiftUI

struct ListItemView: View {
    
    // MARK: Stored properties
    let leadingText: String
    let trailingText: String
    let color: Color
    
    // MARK: Computed properties
    var body: some View {
        HStack {
            Text(leadingText)
            Spacer()
            Text(trailingText)
        }
        .foregroundColor(color)
        .font(.title3)
        .padding(.vertical, 15)
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(leadingText: "Lap 1",
                     trailingText: "00:01.16",
                     color: .white)
        .preferredColorScheme(.dark)
    }
}
