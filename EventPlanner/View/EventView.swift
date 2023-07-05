//
//  EventView.swift
//  EventPlanner
//
//  Created by Zachary Farmer on 6/30/23.
//

import SwiftUI

struct EventView: View {
    var eventLocation: String
    var evenTime: String
    var groupName: String
    var eventName: String
    var eventDesc: String
    var groupColor: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(color: .gray, radius: 4)
            
            
            VStack {
                cardDeatil
                EventButton()
            }
            .padding(.bottom, 5)
        }
        .padding(.horizontal, 10)
        .frame(height: 200)
    }
    
    var cardDeatil: some View {
        VStack {
            HStack {
                groupCard
                
                //MARK: Location and Time
                VStack(alignment: .trailing) {
                    HStack {
                        //Location
                        Image(systemName: "mappin")
                        Text(eventLocation)
                    }
                    HStack {
                        //Time
                        Image(systemName: "clock")
                        Text(evenTime)
                    }
                }
            }
            //MARK: Title and Details
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                        //Event Title
                        Text(eventName)
                            .bold()
                        //Event Details
                        Text(eventDesc)
                    }
                .padding(.leading, 7)
                Spacer()
            }
                
                Spacer()
        }

        .padding(.trailing)
    }
    
    //MARK: Group
    var groupCard: some View {
        VStack {
            HStack {
                Text(groupName)
                    .font(.system(size: 20, weight: .heavy))
                    .frame(width: 50)
                    .padding(10)
                    .background(Color(groupColor))
                    .cornerRadius(10, corners: [.topLeft,.bottomRight])
                    
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(eventLocation: example1.eventLocation, evenTime: example1.eventTime, groupName: example1.groupName, eventName: example1.eventName, eventDesc: example1.eventDesc ?? "", groupColor: example1.groupColor ?? "")
    }
}
