import SwiftUI

struct SpoilerView: UIViewRepresentable {

    var isEnabled: Bool
    var numberOfParticles: Float = 8000

    func makeUIView(context: Context) -> EmitterView {
        let emitterView = EmitterView()
        
        let view = UIView()
        view.backgroundColor = .white
        view.frame = .init(x: 0, y: 0, width: 2, height: 2)
        view.layer.cornerRadius = 1
        view.layer.masksToBounds = true

        let emitterCell = CAEmitterCell()
        emitterCell.contents = UIImage(named: "white-particle")?.cgImage
        emitterCell.contentsScale = 2
        emitterCell.emissionRange = .pi * 2
        emitterCell.velocityRange = 20
        emitterCell.lifetime = 1
        emitterCell.alphaRange = 1
        emitterCell.birthRate = numberOfParticles
        emitterCell.scale = 0.02
        emitterCell.alphaRange = 1
        
        emitterView.layer.emitterShape = .rectangle
        emitterView.layer.emitterCells = [emitterCell]

        return emitterView
    }

    func updateUIView(_ uiView: EmitterView, context: Context) {
        defer {
            uiView.layer.birthRate = isEnabled ? 1 : 0
        }
        
        guard isEnabled else { return }
        uiView.layer.beginTime = CACurrentMediaTime()
    }
}
