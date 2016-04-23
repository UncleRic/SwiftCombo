//  ClubsViewController.swift
//  SwiftCombo
//
//  Created by Frederick C. Lee on 4/22/16.
//  Copyright © 2016 Amourine Technologies. All rights reserved.
// -----------------------------------------------------------------------------------------------------

import UIKit

let kCellIdentifier = "TimeLineCell"

class ClubsViewController: UIViewController {

    @IBOutlet weak var gTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Getting UITableViewCell template:
        let myNib = UINib(nibName: "CardTableViewCell",bundle: nil)
        gTableView.registerNib(myNib, forCellReuseIdentifier: kCellIdentifier)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let noteCell = tableView.dequeueReusableCellWithIdentifier(kCellIdentifier, forIndexPath:indexPath) as! UITableViewCell
        return noteCell
    }

}

