//  DataSource.swift
//  SwiftCombo
//
//  Created by Frederick C. Lee on 4/23/16.
//  Copyright © 2016 Amourine Technologies. All rights reserved.
// -----------------------------------------------------------------------------------------------------

import Foundation
import UIKit

// Protocols 
// A protocol is a way of expressing commonalities (behavior) between otherwise unrelated types.
// A protocol is a type — so dynamic polymorphism applies.
// They eliminate an entire class of bugs via compile-time vs run-time.
// SourceTypeProtocol conforms to UITableViewDataSource

protocol SourceTypeProtocol:UITableViewDataSource {
    func insertTopRowIn(tableView:UITableView)
    func deleteRowAtIndexPath(indexPath:NSIndexPath, from tableView:UITableView)
}

extension SourceTypeProtocol {
    func insertTopRowIn(tableView:UITableView) {
        tableView.insertRowsAtIndexPaths([NSIndexPath(forRow: 0, inSection: 0)], withRowAnimation: .Fade)
    }
    func deleteRowAtIndexPath(indexPath:NSIndexPath, from tableView:UITableView) {
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    }
}


// ===================================================================================================

class CardDataSource:NSObject, UITableViewDataSource, SourceTypeProtocol {
    private var hand = Hand()
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let noteCell = tableView.dequeueReusableCellWithIdentifier(kCellIdentifier, forIndexPath:indexPath) as! CardCell
        return noteCell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle
                   editingStyle: UITableViewCellEditingStyle,
                   forRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}
