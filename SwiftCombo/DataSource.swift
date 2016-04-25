//  DataSource.swift
//  SwiftCombo
//
//  Created by Frederick C. Lee on 4/23/16.
//  Copyright © 2016 Amourine Technologies. All rights reserved.
// -----------------------------------------------------------------------------------------------------

import Foundation
import UIKit

class CardDataSource:NSObject, UITableViewDataSource, SourceTypeProtocol {
    
    internal var hand = Hand()
    
    func addItemTo(tableView:UITableView) {
        if hand.numberOfItems < 5 {
            hand = hand.addNewItemAtIndex(0)
            insertTopRowIn(tableView)
        }
    }
    
    // -----------------------------------------------------------------------------------------------------
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hand.numberOfItems
    }
    
    // -----------------------------------------------------------------------------------------------------
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCellWithIdentifier(kCellIdentifier, forIndexPath:indexPath) as? CardCell
            else {
            fatalError("Could not create Card cell or Hand Instance.")
        }
        
        cell.fillWith(hand[indexPath.row])
        return cell
    }
    
    // -----------------------------------------------------------------------------------------------------
    
    func tableView(tableView: UITableView, commitEditingStyle
                   editingStyle: UITableViewCellEditingStyle,
                   forRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}
