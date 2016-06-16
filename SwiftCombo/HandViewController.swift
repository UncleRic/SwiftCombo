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
    private var dataSource = HandDataSource()
    
    @IBOutlet weak var gTableView: UITableView!
    @IBOutlet weak var emptyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gTableView.dataSource = dataSource
        let myNib = UINib(nibName: "CardTableViewCell",bundle: nil)
        gTableView.register(myNib, forCellReuseIdentifier: kCellIdentifier)
    }
    
    override func viewDidLayoutSubviews() {
        emptyLabel.isHidden = (hand.numberOfItems > 0)
        gTableView.isHidden = !emptyLabel.isHidden
        deck = createDeck()
    }
    // -----------------------------------------------------------------------------------------------------
    // MARK: - Action methods
    
    @IBAction func NewHand(_ sender: UIBarButtonItem) {
        dataSource.dataObject = hand.createFullHand()
        gTableView.isHidden = false
        gTableView.reloadData()
    }
    
    @IBAction func addCardAction(_ sender: UIBarButtonItem) {
        dataSource.addItemTo(gTableView)
    }
    
    @IBAction func exitAction(_ sender: UIBarButtonItem) {
        exit(0)
    }
    
}

