//  Protocols.swift
//  SwiftCombo
//
//  Created by Frederick C. Lee on 4/24/16.
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
    // ...dataObject could be ANY model type.  The conforming code set it to 'Hand'.
    // 'dataObject' had both a getter & setter:
    var dataObject:DataTypeProtocol{get set}
    var conditionForAdding: Bool {get}
    func insertTopRowIn(tableView:UITableView)
    func deleteRowAtIndexPath(indexPath:NSIndexPath, from tableView:UITableView)
}

extension SourceTypeProtocol {
    var conditionForAdding:Bool {
        return dataObject.numberOfItems < 5
    }
    func insertTopRowIn(tableView:UITableView) {
        tableView.insertRowsAtIndexPaths([NSIndexPath(forRow: 0, inSection: 0)], withRowAnimation: .Fade)
    }
    func deleteRowAtIndexPath(indexPath:NSIndexPath, from tableView:UITableView) {
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    }
}

// -----------------------------------------------------------------------------------------------------
// The model depends on the following methods within DataTypeProtocol.
// The model must perform the following functions (conform to protocol) to avoid the protocol-breach compiler error:

protocol DataTypeProtocol {
    var numberOfItems:Int{get}
    func addNewItemAtIndex(index:Int) -> Self
    func deleteItemAtIndex(index:Int) -> Self
    func moveItem(fromIndex:Int, toIndex:Int) -> Self
}

