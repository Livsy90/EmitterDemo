import SwiftUI

extension View {
    func spoiler(numberOfParticles: Float, isEnabled: Binding<Bool>) -> some View {
        self
            .overlay {
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .opacity(isEnabled.wrappedValue ? 1 : 0)
                    .blur(radius: 2)
                    .padding(-3)
            }
            .modifier(SpoilerModifier(isEnabled: isEnabled.wrappedValue, numberOfParticles: numberOfParticles))
            .animation(.easeIn, value: isEnabled.wrappedValue)
            .onTapGesture {
                isEnabled.wrappedValue.toggle()
            }
    }
}
