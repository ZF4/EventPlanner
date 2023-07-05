//
//  EventButton.swift
//  EventPlanner
//
//  Created by Zachary Farmer on 6/30/23.
//

import SwiftUI

struct EventButton: View {
    var body: some View {
        Button(action: {}, label: {
            Text("Add to Calendar")
                .foregroundColor(Color.white)
        })
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(Color.blue)
        .cornerRadius(8)
    }
}

struct EventButton_Previews: PreviewProvider {
    static var previews: some View {
        EventButton()
            .previewLayout(.sizeThatFits)
    }
}
