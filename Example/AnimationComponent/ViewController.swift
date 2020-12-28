//
//  ViewController.swift
//  AnimationComponent
//
//  Created by modevstudio on 12/28/2020.
//  Copyright (c) 2020 modevstudio. All rights reserved.
//

import UIKit
import Beagle
import AnimationComponent

class ViewController: UIViewController {

    let button: UIButton = {
        let btn = UIButton()
        btn.setTitle("Open component", for: .normal)
        btn.setTitleColor(UIColor.blue, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        [
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ].forEach { (item) in
            item.isActive = true
        }
        
        button.addTarget(self, action: #selector(openAnimationComponentVC), for: .touchUpInside)
    }

    @objc func openAnimationComponentVC() {
        let beagleScreenVc = Beagle.screen(.declarative(.init(child: AnimationComponent(url: "https://assets7.lottiefiles.com/packages/lf20_c9miik7h.json"))))
        self.present(beagleScreenVc, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

