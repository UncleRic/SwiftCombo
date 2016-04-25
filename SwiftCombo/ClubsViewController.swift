//  ClubsViewController.swift
//  SwiftCombo
//
//  Created by Frederick C. Lee on 4/22/16.
//  Copyright © 2016 Amourine Technologies. All rights reserved.
// -----------------------------------------------------------------------------------------------------

import UIKit

let kCellIdentifier = "CardCell"
var deck:[Card]?

class ClubsViewController: UIViewController {
    
    private let hand = Hand()
    private let datasource = CardDataSource()
    
    @IBOutlet weak var gTableView: UITableView!
    @IBOutlet weak var emptyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        deck = createDeck()
        gTableView.dataSource = datasource
        let myNib = UINib(nibName: "CardTableViewCell",bundle: nil)
        gTableView.registerNib(myNib, forCellReuseIdentifier: kCellIdentifier)
    }
    
    override func viewDidLayoutSubviews() {
        emptyLabel.hidden = (hand.numberOfItems > 0)
        gTableView.hidden = !emptyLabel.hidden
    }
    // -----------------------------------------------------------------------------------------------------
    // MARK: - Action methods
    
    @IBAction func NewHand(sender: UIBarButtonItem) {
        let shit = hand.createFullHand()
        datasource.hand = shit
        gTableView.hidden = false
        gTableView.reloadData()
      return
    }
    
    @IBAction func addCardAction(sender: UIBarButtonItem) {
        if hand.numberOfItems < 5 {
            
       // insertTopRowIn(gTableView)
        }
    }
    
    @IBAction func exitAction(sender: UIBarButtonItem) {
        exit(0)
    }
    
}

