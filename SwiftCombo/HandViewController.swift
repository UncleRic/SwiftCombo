//  HandViewController.swift
//  SwiftCombo
//
//  Created by Frederick C. Lee on 4/22/16.
//  Copyright © 2016 Amourine Technologies. All rights reserved.
// -----------------------------------------------------------------------------------------------------

import UIKit

let kCellIdentifier = "CardCell"
var deck:[Card]?

class HandViewController: UIViewController {
    
    private var hand = Hand()
    private let dataSource = CardDataSource()
    
    @IBOutlet weak var gTableView: UITableView!
    @IBOutlet weak var emptyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gTableView.dataSource = dataSource
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
        deck = createDeck()
        dataSource.hand = hand.createFullHand()
        gTableView.hidden = false
        gTableView.reloadData()
    }
    
    @IBAction func addCardAction(sender: UIBarButtonItem) {
        dataSource.addItemTo(gTableView)
    }
    
    @IBAction func exitAction(sender: UIBarButtonItem) {
        exit(0)
    }
    
}

