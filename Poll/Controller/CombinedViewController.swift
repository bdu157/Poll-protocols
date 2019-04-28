//
//  CombinedViewController.swift
//  Poll
//
//  Created by Dongwoo Pae on 4/24/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocols {
    var voteController: VoteController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToVotingVC" {
            guard let destination = segue.destination as? VotingViewController else {return}
            destination.voteController = voteController
        } else if segue.identifier == "ToResultsVC" {
            guard let destination = segue.destination as? ResultsTableViewController else {return}
            destination.voteController = voteController
        }
    }
}
