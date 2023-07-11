//
//  CalenderViewModel.swift
//  EventPlanner
//
//  Created by Alandis Seals on 7/7/23.
//

import Foundation
import SwiftUI

class EventViewModel: ObservableObject {
    @Published var events: [Event] = []
    @Published var addEvent = false
    
    init() {
        fetchEvents()
    }
    
    func fetchEvents() {
        events.append(contentsOf: exampleEvents)
    }
    
    }


