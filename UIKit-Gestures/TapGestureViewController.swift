//
//  TapGestureViewController.swift
//  UIKit-Gestures
//
//  Created by casandra grullon on 2/3/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class TapGestureViewController: UIViewController {

    @IBOutlet weak var heart: UIImageView!
    
    //1. configure a tap gesture
    private lazy var tapGesture: UITapGestureRecognizer = {
       let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(didTap(_:)))
        gesture.numberOfTapsRequired = 2
        return gesture
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        //2. add gesture to the image view
        heart.addGestureRecognizer(tapGesture)
        heart.isUserInteractionEnabled = true
    }

    //3. create a selector method for when the gesture is triggered.
    @objc private func didTap(_ gesture: UITapGestureRecognizer) {
        heart.image = UIImage(systemName: "heart.fill")
    }
}
