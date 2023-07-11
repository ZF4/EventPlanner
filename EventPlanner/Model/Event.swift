//
//  Event.swift
//  EventPlanner
//
//  Created by Zachary Farmer on 6/30/23.
//

import Foundation
import SwiftUI

struct Event: Hashable, Identifiable {
    let id = UUID().uuidString
    var groupName: String
    var eventName: String
    var eventDesc: String?
    var eventLocation: String
    var eventTime: String
    var groupColor: String?
    var addToCalendar: Bool
}

enum Group: String, CaseIterable {
    case OG
    case MXG
    case MSG
}

var example1 = Event(groupName: "OG", eventName: "Retirement Ceremony", eventDesc: "Join us to celebrate the retirment ceremony of Lt Col Gunnoe. Snacks and refreshments will be provided. Early dismissal to follow.", eventLocation: "Wing Auditorium", eventTime: "1400", groupColor: "ogColor", addToCalendar: false)

var exampleEvents: [Event] = [
    Event(groupName: "MXG", eventName: "Retirment Ceremony", eventDesc: "Join us to celebrate the retirment ceremony of Col Young. Snacks and refreshments will be provided. Early dismissal to follow.", eventLocation: "Wing Auditorium", eventTime: "1400", groupColor: "mxgColor", addToCalendar: true),
    Event(groupName: "MSG", eventName: "Change of Command", eventDesc: "Lt Col X will relinquish Command to Lt Col X. Please join us in celebration. Snacks and refreshments will be provided.", eventLocation: "MX Hangar", eventTime: "1300", groupColor: "msgColor", addToCalendar: false),
    Event(groupName: "MXG", eventName: "Retirement Ceremony", eventDesc: "Join us to celebrate the retirment ceremony of Lt Col Gunnoe. Snacks and refreshments will be provided. Early dismissal to follow.", eventLocation: "Wing Auditorium", eventTime: "1400", groupColor: "ogColor", addToCalendar: false),
    Event(groupName: "MSG", eventName: "Change of Command", eventDesc: "Lt Col X will relinquish Command to Lt Col X. Please join us in celebration. Snacks and refreshments will be provided.", eventLocation: "MX Hangar", eventTime: "1300", groupColor: "msgColor", addToCalendar: false),
    Event(groupName: "MXG", eventName: "Change of Command", eventDesc: "Lt Col X will relinquish Command to Lt Col X. Please join us in celebration. Snacks and refreshments will be provided.", eventLocation: "MX Hangar", eventTime: "1300", groupColor: "msgColor", addToCalendar: false),
    Event(groupName: "MSG", eventName: "Change of Command", eventDesc: "Lt Col X will relinquish Command to Lt Col X. Please join us in celebration. Snacks and refreshments will be provided.", eventLocation: "MX Hangar", eventTime: "1300", groupColor: "msgColor", addToCalendar: false),
    Event(groupName: "OG", eventName: "Change of Command", eventDesc: "Lt Col X will relinquish Command to Lt Col X. Please join us in celebration. Snacks and refreshments will be provided.", eventLocation: "MX Hangar", eventTime: "1300", groupColor: "msgColor", addToCalendar: false),
    Event(groupName: "OG", eventName: "Retirement Ceremony", eventDesc: "Join us to celebrate the retirment ceremony of Lt Col Gunnoe. Snacks and refreshments will be provided. Early dismissal to follow.", eventLocation: "Wing Auditorium", eventTime: "1400", groupColor: "ogColor", addToCalendar: false)
]
