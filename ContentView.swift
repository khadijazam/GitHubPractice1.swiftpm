import SwiftUI

struct ContentView: View {
    @State var showImage = false
    @State var imageName = ""
    var body: some View {
        VStack {
            Text("Khadija Azam")
            Text("Alex V")
            Image(systemName: "apple.terminal.on.rectangle")
                .foregroundStyle(.purple)
                .opacity(0.7)
            Button(action: {
                showImage.toggle()
                toggleImage()
            }) {
                Text("Show Image")
            }
            Image(systemName: imageName)
        }
    }
    func toggleImage() {
        if showImage {
            imageName = "person.slash"
        } else {
            imageName = ""
        }
    }
}
