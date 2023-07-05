//
//  ContentView.swift
//  EventPlanner
//
//  Created by Zachary Farmer on 6/30/23.
//

import SwiftUI

struct HomeView: View {
    var cards = events
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(cards, id: \.self) { card in
                        EventView(eventLocation: card.eventLocation, evenTime: card.eventTime, groupName: card.groupName, eventName: card.eventName, eventDesc: card.eventDesc ?? "", groupColor: card.groupColor ?? "")
                    }
                }
                .navigationTitle("117 Events")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
