//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Dongwoo Pae on 4/24/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    var voteContoller : VoteController = VoteController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for childVC in children {
            if var childVC = childVC as? VoteControllerProtocols {
                childVC.voteController = voteContoller
            }
        }
    }

}
