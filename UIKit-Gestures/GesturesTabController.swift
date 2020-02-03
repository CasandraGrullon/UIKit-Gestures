//
//  GesturesTabController.swift
//  UIKit-Gestures
//
//  Created by casandra grullon on 2/3/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class GesturesTabController: UITabBarController {

    private lazy var tapGestureVC: TapGestureViewController = {
        //need storyboard instance
        let storyboard = UIStoryboard(name: "TapGesture", bundle: nil)
        //get instance of vc from storyboard
        guard let viewController = storyboard.instantiateViewController(identifier: "TapGestureViewController") as? TapGestureViewController else {
            fatalError("could not cast to TapGestureViewController")
        }
        return viewController
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [tapGestureVC, SwipeGestureViewController()]
    }
    

}
