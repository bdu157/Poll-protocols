//
//  VotingViewController.swift
//  Poll
//
//  Created by Dongwoo Pae on 4/23/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocols {
    var voteController: VoteController?
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var responseField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitTapped(_ sender: Any) {
       guard let name = nameField.text,
        let response = responseField.text else {return}
        voteController?.createVote(name: name, response: response)      //it was reaching a method - createVote becuase it was private
        
        nameField.text = ""
        responseField.text = ""
    }
}
