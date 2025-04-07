import SwiftUI

struct ContentView: View {
    @State var username = ""
    @State var showImage = false
    @State var imageName = ""
    var body: some View {
        VStack {
            Text("Khadija Azam")
            Text("Alex V")
            
            Text("Hello, I'm a robot")
                .font(.largeTitle)
                .bold()
            Circle()
                .frame(width: 100,height: 29)
            
            
            // STICKMAN
            HStack{
                Ellipse()
                    .frame(width: 15, height: 80)
                    .rotationEffect(.degrees(-160))
                    .offset(x: 1)
                Ellipse()
                    .frame(width: 30, height: 90)
                    .offset(x: 2)
                Ellipse()
                    .frame(width: 13, height: 70)
                    .rotationEffect(.degrees(240))
                    .offset(x: 20, y: -50)
            }
            HStack{
                Ellipse()
                    .frame(width: 15, height: 50)
                    .rotationEffect(.degrees(20))
                    .offset(x: -12, y: -9)
                Ellipse()
                    .frame(width: 15, height: 50)
                    .rotationEffect(.degrees(-20))
                    .offset(x: 12, y: -9)
                
               
            }
            TextField("What's your name?", text: $username)
                .textFieldStyle(.roundedBorder)
            
            Text("Hello, \(username)")
            
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
