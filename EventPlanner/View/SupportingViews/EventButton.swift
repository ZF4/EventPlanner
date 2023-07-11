import SwiftUI

struct EventButton: View {
    //var addedEvent: [Event]
    
    let action: () -> Void
    
    var body: some View {
        Button(action: { action() }, label: {
            Text("Add to Calendar")
                .foregroundColor(Color.white)
        })
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(Color.blue)
        .cornerRadius(8)
    }
}

struct EventButton_Previews: PreviewProvider {
    static var previews: some View {
        EventButton(action: {})
            .previewLayout(.sizeThatFits)
    }
}
