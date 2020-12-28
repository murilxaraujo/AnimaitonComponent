//
//  AnimationComponent.swift
//  AnimationComponent
//
//  Created by Murilo Araujo on 28/12/20.
//

import Foundation
import UIKit
import Beagle
import Lottie

public struct AnimationComponent: ServerDrivenComponent {
    let url: String
    
    public init(url: String) {
        self.url = url
    }
    
    public func toView(renderer: BeagleRenderer) -> UIView {
        guard let url = URL(string: url) else {
            return UIView()
        }
        
        let animationView = CustomLotView(url: url)
        animationView.frame = CGRect(x: animationView.frame.minX, y: animationView.frame.minY, width: animationView.frame.width, height: 200)
        return animationView
    }
    
    public static func register() {
        Beagle.registerCustomComponent("AnimationView", componentType: AnimationComponent.self)
    }
}

class CustomLotView: UIView {
    var animationView: AnimationView
    
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
    
    func playAnimation() {
        animationView.play()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
