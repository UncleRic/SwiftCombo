//  ClubsViewController.swift
//  SwiftCombo
//
//  Created by Frederick C. Lee on 4/22/16.
//  Copyright © 2016 Amourine Technologies. All rights reserved.
// -----------------------------------------------------------------------------------------------------

import UIKit

let kCellIdentifier = "CardCell"

class ClubsViewController: UIViewController {
    
    private let hand = Hand()
    private let dataSource = CardDataSource()
    
    @IBOutlet weak var gTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gTableView.dataSource = dataSource
        // Getting UITableViewCell template:
        let myNib = UINib(nibName: "CardTableViewCell",bundle: nil)
        
        gTableView.registerNib(myNib, forCellReuseIdentifier: kCellIdentifier)
        
        let deck = createDeck()
        
    }
    
    // -----------------------------------------------------------------------------------------------------
    @IBAction func addCardAction(sender: UIBarButtonItem) {
        if hand.numberOfCards < 5 {
            
       // insertTopRowIn(gTableView)
        }
    }
    
    @IBAction func exitAction(sender: UIBarButtonItem) {
        exit(0)
    }
    
}

