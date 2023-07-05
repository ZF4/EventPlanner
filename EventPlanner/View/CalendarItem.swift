//
//  CalendarView.swift
//  EventPlanner
//
//  Created by Zachary Farmer on 7/5/23.
//

import SwiftUI

struct CalendarItem: View {
    var event: Event
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading) {
                
                Text(event.eventName)
                    .bold()
                
                Text(event.eventLocation)
                    .font(.system(size: 16, weight: .ultraLight))
            }
            .font(.system(size: 16))
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text(event.eventTime)
                    .font(.system(size: 16, weight: .ultraLight))
            }
        }
    }
}

struct CalendarItem_Previews: PreviewProvider {
    static var previews: some View {
        CalendarItem(event: events[1])
    }
}
