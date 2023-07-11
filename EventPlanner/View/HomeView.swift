import SwiftUI

struct HomeView: View {
    @StateObject var eventVM = EventViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(eventVM.events, id: \.self) { card in
                            EventView(event: card)
                    }
                }
                .navigationTitle("117 Events")
                .navigationBarTitleDisplayMode(.inline)
                .onAppear {
                    eventVM.fetchEvents()
                }
            }
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
