//
//  VoteController.swift
//  Poll
//
//  Created by Dongwoo Pae on 4/23/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import Foundation
import UIKit

class VoteController {
    var votes: [Vote] = []
    
    func createVote(name: String, response: String) {
        let input = Vote(name: name, response: response)
        votes.append(input)
    }
}



