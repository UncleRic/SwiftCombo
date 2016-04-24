//  SwiftCombo
//
//  Created by Frederick C. Lee on 4/22/16.
//  Copyright © 2016 Amourine Technologies. All rights reserved.
// -----------------------------------------------------------------------------------------------------

import Foundation
import UIKit

enum Rank: Int {
    case Ace = 1
    case TwvarThree, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

enum Suit:Int {
    case Spades = 1, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    func color() -> UIColor {
        switch self {
        case .Spades:
            return UIColor.blackColor()
        case .Clubs:
            return UIColor.blackColor()
        case .Diamonds:
            return UIColor.redColor()
        case .Hearts:
            return UIColor.redColor()
        }
    }
}

// ===================================================================================================

class CardCell:UITableViewCell {
    @IBOutlet weak var suitLabel:UILabel!
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var cardImageView:UIImageView!
    func fillWith(card:Card) {
        rankLabel.textColor = card.suit.color()
        rankLabel.text = card.rank.simpleDescription()
        suitLabel.text = card.suit.simpleDescription()
    }
}

// ===================================================================================================

internal func createDeck() -> [Card] {
    var n = 1
    var deck = [Card]()
    while let rank = Rank(rawValue: n) {
        var m = 1
        while let suit = Suit(rawValue: m) {
            deck.append(Card(rank: rank, suit: suit))
            m += 1
        }
        n += 1
    }
    return deck
}

// -----------------------------------------------------------------------------------------------------

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

// ===================================================================================================



struct Hand:DataTypeProtocol {
    private var cards = [Card]()
    
    
    subscript(index:Int) -> Card {
        return cards[index]
    }
    
    var numberOfItems:Int {
        return cards.count
    }
    
    func itemAtPosition(index:Int) -> Card {
        return cards[index]
    }
    
    private func insertItem(atIndex index:Int) -> Hand {
        var mutableCards = cards
        mutableCards.insert(mutableCards[0], atIndex: index)
        return Hand(cards:mutableCards)
    }
    
    func addNewItemAtIndex(index:Int) -> Hand {
        return insertItem(atIndex:index)
    }
    
    func deleteItemAtIndex(index:Int) -> Hand {
        return self
        // cards.removeAtIndex(index)
    }
    
    func moveItem(fromIndex:Int, toIndex:Int) -> Hand {
        return self
//        let cardToMove = cards[fromIndex]
//        deleteItemAtIndex(fromIndex)
//        insertItem(cardToMove, atIndex:toIndex)
    }
    
    
}


