//
//  EventView.swift
//  EventPlanner
//
//  Created by Zachary Farmer on 6/30/23.
//

import SwiftUI

struct EventView: View {
    @State var event: Event

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(color: .gray, radius: 4)
            
            
            VStack {
                cardDeatil
                EventButton(action: {
                    
                })
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
                        Text(event.eventLocation)
                    }
                    HStack {
                        //Time
                        Image(systemName: "clock")
                        Text(event.eventTime)
                    }
                }
            }
            //MARK: Title and Details
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                        //Event Title
                    Text(event.eventName)
                            .bold()
                        //Event Details
                    Text(event.eventDesc ?? "No Data")
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
                Text(event.groupName)
                    .font(.system(size: 20, weight: .heavy))
                    .frame(width: 50)
                    .padding(10)
                    .background(Color(event.groupColor ?? ""))
                    .cornerRadius(10, corners: [.topLeft,.bottomRight])
                    
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
    }
    
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(event: example1)
    }
}
