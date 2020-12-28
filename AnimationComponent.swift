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
    public func toView(renderer: BeagleRenderer) -> UIView {
        guard let url = URL(string: url) else {
            return UIView()
        }
        let animationView = AnimationView(url: url) { (error) in
            
        }
        return animationView
    }
}
