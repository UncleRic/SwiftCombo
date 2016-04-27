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
    var dataObject:DataTypeProtocol = Hand()  // ...dataObject can be any model; in this case, a Hand.
    
    var conditionForAdding: Bool {
        return dataObject.numberOfItems < 5
    }
    
    func addItemTo(tableView:UITableView) {
        if conditionForAdding {
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
        guard let cell = tableView.dequeueReusableCellWithIdentifier(kCellIdentifier, forIndexPath:indexPath) as? CardCell,
        hand = dataObject as? Hand
            else {
            fatalError("Could not create Card cell.")
        }
        
        cell.fillWith(hand[indexPath.row])
        return cell
    }
    
    // -----------------------------------------------------------------------------------------------------
    
    func tableView(tableView: UITableView, commitEditingStyle
                   editingStyle: UITableViewCellEditingStyle,
                   forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == .Delete {
            // 1) Delete from the model:
            hand.deleteItemAtIndex(indexPath.row)
            // 2) Delete from the View:
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
        
    }
}
