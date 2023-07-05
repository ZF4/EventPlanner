//
//  CalendarView.swift
//  EventPlanner
//
//  Created by Zachary Farmer on 7/5/23.
//

import SwiftUI

struct CalendarView: View {
    @State var eventDemo: [Event] = events
    
    var body: some View {
            List {
                #warning("Add more events to eventDemo")
                ForEach(Group.allCases, id: \.self) { group in
                    Section(header: Text(group.rawValue)) {
                        ForEach(eventDemo.filter{ $0.groupName == group.rawValue }, id: \.self) { item in
                            CalendarItem(event: item)
                        }
                        .onMove(perform: move)
                        .onDelete(perform: delete)
                    }
                }
            }
        .navigationTitle("Your Calendar 🗓️")
        .toolbar {
            EditButton()
        }
    }
    
    
     func move(_ fromOffSet: IndexSet, _ toOffSet: Int) {
        eventDemo.move(fromOffsets: fromOffSet, toOffset: toOffSet)
    }
    
    func delete(at offSets: IndexSet) {
        eventDemo.remove(atOffsets: offSets)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CalendarView()
        }
    }
}
