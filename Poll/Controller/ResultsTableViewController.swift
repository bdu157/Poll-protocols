//
//  ResultsTableViewController.swift
//  Poll
//
//  Created by Dongwoo Pae on 4/24/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController, VoteControllerProtocols {
    var voteController: VoteController?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
  

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    


    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return voteController?.votes.count ?? 0 // if there is no input then return 0 ternary operator
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RightDetail", for: indexPath)
        guard let vote = voteController?.votes[indexPath.row] else {return UITableViewCell()}
        cell.textLabel?.text = vote.name
        cell.detailTextLabel?.text = vote.response
        
        return cell
    }

}
