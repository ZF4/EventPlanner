//
//  MainTabView.swift
//  EventPlanner
//
//  Created by Zachary Farmer on 7/5/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "list.bullet")
                }
            
            CalendarView()
                .tabItem {
                    Image(systemName: "calendar")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
