//  DataSource.swift
//  SwiftCombo
//
//  Created by Frederick C. Lee on 4/23/16.
//  Copyright © 2016 Amourine Technologies. All rights reserved.
// -----------------------------------------------------------------------------------------------------

import Foundation
import UIKit

class DataSource:NSObject, UITableViewDataSource, SourceTypeProtocol {
    
    internal var hand = Hand()
    
    var dataObject:DataTypeProtocol = Hand()  // ...dataObject can be any model; in this case, a Hand.
    
    var conditionForAdding: Bool {
        return false
    }

    // -----------------------------------------------------
    
    init<A:DataTypeProtocol>(dataObject:A) {
        self.dataObject = dataObject
    }

    func addItemTo(_ tableView:UITableView) {
        if conditionForAdding {
            dataObject = dataObject.addNewItemAtIndex(0)
            insertTopRowIn(tableView)
            tableView.isHidden = false
            tableView.setNeedsDisplay()
        }
    }
    
    // -----------------------------------------------------------------------------------------------------
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataObject.numberOfItems
    }
    
    // -----------------------------------------------------------------------------------------------------
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        fatalError("This method must be overridden.")
    }
    
    // -----------------------------------------------------------------------------------------------------
    
    func tableView(_ tableView: UITableView, commit
        editingStyle: UITableViewCellEditingStyle,
        forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            // 1) Delete from the model:
            dataObject = dataObject.deleteItemAtIndex((indexPath as NSIndexPath).row)
            // 2) Delete from the View:
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

// ===================================================================================================

class HandDataSource:DataSource {
    
    init() {
        super.init(dataObject:Hand())
    }
    
    override var conditionForAdding: Bool {
        return dataObject.numberOfItems < 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: kCellIdentifier, for:indexPath) as? CardCell,
        hand = dataObject as? Hand
            else {
            fatalError("Could not create Card cell.")
        }
        
        cell.fillWith(hand[(indexPath as NSIndexPath).row])
        return cell
    }
    
}
