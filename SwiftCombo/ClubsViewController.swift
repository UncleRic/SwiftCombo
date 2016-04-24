//  ClubsViewController.swift
//  SwiftCombo
//
//  Created by Frederick C. Lee on 4/22/16.
//  Copyright © 2016 Amourine Technologies. All rights reserved.
// -----------------------------------------------------------------------------------------------------

import UIKit

let kCellIdentifier = "CardCell"
let deck = createDeck()

class ClubsViewController: UIViewController {
    
    private let hand = Hand()
    
    @IBOutlet weak var gTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Getting UITableViewCell template:
        let myNib = UINib(nibName: "CardTableViewCell",bundle: nil)
        gTableView.registerNib(myNib, forCellReuseIdentifier: kCellIdentifier)
        
    }
    
    // -----------------------------------------------------------------------------------------------------
    @IBAction func addCardAction(sender: UIBarButtonItem) {
        if hand.numberOfItems < 5 {
            
       // insertTopRowIn(gTableView)
        }
    }
    
    @IBAction func exitAction(sender: UIBarButtonItem) {
        exit(0)
    }
    
}

