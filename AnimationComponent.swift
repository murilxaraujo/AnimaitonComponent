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
    let height: CGFloat
    public init(url: String, height: CGFloat) {
        self.url = url
        self.height = height
    }
    
    public func toView(renderer: BeagleRenderer) -> UIView {
        guard let url = URL(string: url) else {
            return UIView()
        }
        
        let animationView = CustomLotView(url: url)
        animationView.frame = CGRect(x: animationView.frame.minX, y: animationView.frame.minY, width: animationView.frame.width, height: height)
        return animationView
    }
    
    public static func register() {
        Beagle.registerCustomComponent("AnimationView", componentType: AnimationComponent.self)
    }
}
