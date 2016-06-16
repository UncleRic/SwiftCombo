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
    func insertTopRowIn(_ tableView:UITableView)
    func deleteRowAtIndexPath(_ indexPath:IndexPath, from tableView:UITableView)
}

extension SourceTypeProtocol {
    var conditionForAdding:Bool {
        return dataObject.numberOfItems < 5
    }
    func insertTopRowIn(_ tableView:UITableView) {
        tableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: .fade)
    }
    func deleteRowAtIndexPath(_ indexPath:IndexPath, from tableView:UITableView) {
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
}

// -----------------------------------------------------------------------------------------------------
// The model depends on the following methods within DataTypeProtocol.
// The model must perform the following functions (conform to protocol) to avoid the protocol-breach compiler error:

protocol DataTypeProtocol {
    var numberOfItems:Int{get}
    func addNewItemAtIndex(_ index:Int) -> Self
    func deleteItemAtIndex(_ index:Int) -> Self
    func moveItem(_ fromIndex:Int, toIndex:Int) -> Self
}

