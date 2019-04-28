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

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)



        return cell
    }

}
