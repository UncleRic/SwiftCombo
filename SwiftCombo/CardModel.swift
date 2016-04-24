//  SwiftCombo
//
//  Created by Frederick C. Lee on 4/22/16.
//  Copyright © 2016 Amourine Technologies. All rights reserved.
// -----------------------------------------------------------------------------------------------------

import Foundation
import UIKit

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
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

struct Hand {
   // private let deck = Deck()
    private var cards = [Card]()
    
    var numberOfItems:Int {
        return cards.count
    }
    
    func itemAtPosition(index:Int) -> Card {
        return cards[index]
    }
    
    private mutating func insertItem(card:Card, atIndex index:Int) {
        cards.insert(card, atIndex:index)
    }
    
    func addNewItemAtIndex(index:Int) {
    //    insertItem(deck.nextCard(), atIndex:index)
    }
    
    mutating func deleteItemAtIndex(index:Int) {
        cards.removeAtIndex(index)
    }
    
    mutating func moveCard(fromIndex:Int, toIndex:Int) {
        let cardToMove = cards[fromIndex]
        deleteItemAtIndex(fromIndex)
        insertItem(cardToMove, atIndex:toIndex)
    }
    
    
}


