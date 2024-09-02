import SwiftUI

struct ContentView: View {
    
    @State private var isSpoilerEnabled = true
    
    private let text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    var body: some View {
        Text(text)
            .spoiler(numberOfParticles: Float(text.count * 20), isEnabled: $isSpoilerEnabled)
            .padding()
    }
}

#Preview {
    ContentView()
}
