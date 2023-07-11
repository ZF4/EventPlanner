import SwiftUI

struct CalendarView: View {
    @ObservedObject var events = EventViewModel()

    var body: some View {
            List {
                ForEach(events.events, id: \.self) { item in
                            CalendarItem(event: item)
                        }
                        .onMove(perform: move)
                        .onDelete(perform: delete)
            }
        .navigationTitle("Your Calendar 🗓️")
        .toolbar {
                EditButton()
        }
        .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                   Button(action: {}, label: {
                       Image(systemName: "plus")
                           .font(.system(size: 15))
                   })
            }
        }
    }
    
     func move(_ fromOffSet: IndexSet, _ toOffSet: Int) {
         events.events.move(fromOffsets: fromOffSet, toOffset: toOffSet)
    }
    
    func delete(at offSets: IndexSet) {
        events.events.remove(atOffsets: offSets)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CalendarView()
        }
    }
}
