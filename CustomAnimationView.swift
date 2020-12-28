//
//  CustomAnimationView.swift
//  AnimationComponent
//
//  Created by Murilo Araujo on 28/12/20.
//

import Foundation
import Lottie
import UIKit

internal class CustomLotView: UIView {
    private var animationView: AnimationView
    
    init(url: URL) {
        animationView = AnimationView()
        super.init(frame: .zero)
        animationView = AnimationView(url: url) { [weak self] error in
            self?.playAnimation()
        }
        animationView.loopMode = .loop
        animationView.contentMode = .scaleAspectFit
        addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        [
            animationView.topAnchor.constraint(equalTo: topAnchor),
            animationView.leftAnchor.constraint(equalTo: leftAnchor),
            animationView.bottomAnchor.constraint(equalTo: bottomAnchor),
            animationView.rightAnchor.constraint(equalTo: rightAnchor)
        ].forEach { (constraint) in
            constraint.isActive = true
        }
    }
    
    private func playAnimation() {
        animationView.play()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
