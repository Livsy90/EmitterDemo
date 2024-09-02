import SwiftUI

struct SpoilerModifier: ViewModifier {

    let isEnabled: Bool
    let numberOfParticles: Float

    func body(content: Content) -> some View {
        content.overlay {
            SpoilerView(
                isEnabled: isEnabled,
                numberOfParticles: numberOfParticles
            )
        }
    }
}
