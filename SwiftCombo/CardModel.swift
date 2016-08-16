//  SwiftCombo
//
//  Created by Frederick C. Lee on 4/22/16.
//  Copyright © 2016 Amourine Technologies. All rights reserved.
// -----------------------------------------------------------------------------------------------------

import Foundation
import UIKit

typealias CardTupple = (rank:String, suit:String, color:UIColor, image:UIImage)

let kSpades = "Spades", kHearts = "Hearts", kClubs = "Clubs", kDiamonds = "Diamonds"
let kAce = "Ace", kTwo = "Two", kThree = "Three", kFour = "Four", kFive = "Five"
let kSix = "Six", kSeven = "Seven", kEight = "Eight", kNine = "Nine", kTen = "Ten"
let kJack = "Jack", kQueen = "Queen", kKing = "King"

let kAceSpades = "AceSpades"
let kTwoSpades = "2Spades", kThreeSpades = "3Spades", kFourSpades = "4Spades", kFiveSpades = "5Spades"
let kSixSpades = "6Spades", kSevenSpades = "7Spades", kEightSpades = "8Spades", kNineSpades = "9Spades"
let kTenSpades = "10Spades", kJackSpades = "JackSpades", kQueenSpades = "QueenSpades", kKingSpades = "KingSpades"

let kAceHearts = "AceHearts"
let kTwoHearts = "2Hearts", kThreeHearts = "3Hearts", kFourHearts = "4Hearts", kFiveHearts = "5Hearts"
let kSixHearts = "6Hearts", kSevenHearts = "7Hearts", kEightHearts = "8Hearts", kNineHearts = "9Hearts"
let kTenHearts = "10Hearts", kJackHearts = "JackHearts", kQueenHearts = "QueenHearts", kKingHearts = "KingHearts"

let kAceClubs = "AceClubs"
let kTwoClubs = "2Clubs", kThreeClubs = "3Clubs", kFourClubs = "4Clubs", kFiveClubs = "5Clubs"
let kSixClubs = "6Clubs", kSevenClubs = "7Clubs", kEightClubs = "8Clubs", kNineClubs = "9Clubs"
let kTenClubs = "10Clubs", kJackClubs = "JackClubs", kQueenClubs = "QueenClubs", kKingClubs = "KingClubs"

let kAceDiamonds = "AceDiamonds"
let kTwoDiamonds = "2Diamonds", kThreeDiamonds = "3Diamonds", kFourDiamonds = "4Diamonds", kFiveDiamonds = "5Diamonds"
let kSixDiamonds = "6Diamonds", kSevenDiamonds = "7Diamonds", kEightDiamonds = "8Diamonds", kNineDiamonds = "9Diamonds"
let kTenDiamonds = "10Diamonds", kJackDiamonds = "JackDiamonds", kQueenDiamonds = "QueenDiamonds", kKingDiamonds = "KingDiamonds"

internal func getImage(_ name:String) -> UIImage {
    guard let myImage = UIImage(named:name) else {
        fatalError("Missing UIImage: \(name)")
    }
    return myImage
}

enum CardItem: Int {
    case aceSpades = 1
    case twoSpades, threeSpades, fourSpades, fiveSpades, sixSpades, sevenSpades,
    eightSpades, nineSpades, tenSpades, jackSpades, queenSpades, kingSpades
    case aceHearts
    case twoHearts, threeHearts, fourHearts, fiveHearts, sixHearts, sevenHearts,
    eightHearts, nineHearts, tenHearts, jackHearts, queenHearts, kingHearts
    case aceClubs
    case twoClubs, threeClubs, fourClubs, fiveClubs, sixClubs, sevenClubs,
    eightClubs, nineClubs, tenClubs, jackClubs, queenClubs, kingClubs
    case aceDiamonds
    case twoDiamonds, threeDiamonds, fourDiamonds, fiveDiamonds, sixDiamonds, sevenDiamonds,
    eightDiamonds, nineDiamonds, tenDiamonds, jackDiamonds, queenDiamonds, kingDiamonds
    func Description() -> CardTupple {
        switch self {
        // Spades:
        case .aceSpades:
            return(kAce, kSpades, UIColor.black, getImage(kAceSpades))
        case .twoSpades:
            return(kTwo, kSpades, UIColor.black, getImage(kTwoSpades))
        case .threeSpades:
            return(kThree, kSpades, UIColor.black, getImage(kThreeSpades))
        case .fourSpades:
            return(kFour, kSpades, UIColor.black, getImage(kFourSpades))
        case .fiveSpades:
            return(kFive, kSpades, UIColor.black, getImage(kFiveSpades))
        case .sixSpades:
            return(kSix, kSpades, UIColor.black, getImage(kSixSpades))
        case .sevenSpades:
            return(kSeven, kSpades, UIColor.black, getImage(kSevenSpades))
        case .eightSpades:
            return(kEight, kSpades, UIColor.black, getImage(kEightSpades))
        case .nineSpades:
            return(kNine, kSpades, UIColor.black, getImage(kNineSpades))
        case .tenSpades:
            return(kTen, kSpades, UIColor.black, getImage(kTenSpades))
        case .jackSpades:
            return(kJack, kSpades, UIColor.black, getImage(kJackSpades))
        case .queenSpades:
            return(kQueen, kSpades, UIColor.black, getImage(kQueenSpades))
        case .kingSpades:
            return(kKing, kSpades, UIColor.black, getImage(kKingSpades))
            
        // Hearts:
        case .aceHearts:
            return(kAce, kHearts, UIColor.red, getImage(kAceHearts))
        case .twoHearts:
            return(kTwo, kHearts, UIColor.red, getImage(kTwoHearts))
        case .threeHearts:
            return(kThree, kHearts, UIColor.red, getImage(kThreeHearts))
        case .fourHearts:
            return(kFour, kHearts, UIColor.red, getImage(kFourHearts))
        case .fiveHearts:
            return(kFive, kHearts, UIColor.red, getImage(kFiveHearts))
        case .sixHearts:
            return(kSix, kHearts, UIColor.red, getImage(kSixHearts))
        case .sevenHearts:
            return(kSeven, kHearts, UIColor.red, getImage(kSevenHearts))
        case .eightHearts:
            return(kEight, kHearts, UIColor.red, getImage(kEightHearts))
        case .nineHearts:
            return(kNine, kHearts, UIColor.red, getImage(kNineHearts))
        case .tenHearts:
            return(kTen, kHearts, UIColor.red, getImage(kTenHearts))
        case .jackHearts:
            return(kJack, kHearts, UIColor.red, getImage(kJackHearts))
        case .queenHearts:
            return(kQueen, kHearts, UIColor.red, getImage(kQueenHearts))
        case .kingHearts:
            return(kKing, kHearts, UIColor.red, getImage(kKingHearts))
            
        // Clubs:
        case .aceClubs:
            return(kAce, kClubs, UIColor.black, getImage(kAceClubs))
        case .twoClubs:
            return(kTwo, kClubs, UIColor.black, getImage(kTwoClubs))
        case .threeClubs:
            return(kThree, kClubs, UIColor.black, getImage(kThreeClubs))
        case .fourClubs:
            return(kFour, kClubs, UIColor.black, getImage(kFourClubs))
        case .fiveClubs:
            return(kFive, kClubs, UIColor.black, getImage(kFiveClubs))
        case .sixClubs:
            return(kSix, kClubs, UIColor.black, getImage(kSixClubs))
        case .sevenClubs:
            return(kSeven, kClubs, UIColor.black, getImage(kSevenClubs))
        case .eightClubs:
            return(kEight, kClubs, UIColor.black, getImage(kEightClubs))
        case .nineClubs:
            return(kNine, kClubs,  UIColor.black, getImage(kNineClubs))
        case .tenClubs:
            return(kTen, kClubs, UIColor.black, getImage(kTenClubs))
        case .jackClubs:
            return(kJack, kClubs, UIColor.black, getImage(kJackClubs))
        case .queenClubs:
            return(kQueen, kClubs, UIColor.black, getImage(kQueenClubs))
        case .kingClubs:
            return(kKing, kClubs, UIColor.black, getImage(kKingClubs))
            
            
        // Diamonds:
        case .aceDiamonds:
            return(kAce, kDiamonds,UIColor.red, getImage(kAceDiamonds))
        case .twoDiamonds:
            return(kTwo, kDiamonds,UIColor.red, getImage(kTwoDiamonds))
        case .threeDiamonds:
            return(kThree, kDiamonds,UIColor.red, getImage(kThreeDiamonds))
        case .fourDiamonds:
            return(kFour, kDiamonds,UIColor.red, getImage(kFourDiamonds))
        case .fiveDiamonds:
            return(kFive, kDiamonds,UIColor.red, getImage(kFiveDiamonds))
        case .sixDiamonds:
            return(kSix, kDiamonds,UIColor.red, getImage(kSixDiamonds))
        case .sevenDiamonds:
            return(kSeven, kDiamonds,UIColor.red, getImage(kSevenDiamonds))
        case .eightDiamonds:
            return(kEight, kDiamonds,UIColor.red, getImage(kEightDiamonds))
        case .nineDiamonds:
            return(kNine, kDiamonds,UIColor.red, getImage(kNineDiamonds))
        case .tenDiamonds:
            return(kTen, kDiamonds,UIColor.red, getImage(kTenDiamonds))
        case .jackDiamonds:
            return(kJack, kDiamonds,UIColor.red, getImage(kJackDiamonds))
        case .queenDiamonds:
            return(kQueen, kDiamonds,UIColor.red, getImage(kQueenDiamonds))
        case .kingDiamonds:
            return(kKing, kDiamonds,UIColor.red, getImage(kKingDiamonds))
        }
    }
}

// ===================================================================================================

class CardCell:UITableViewCell {
    @IBOutlet weak var suitLabel:UILabel!
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var cardImageView:UIImageView!
    func fillWith(_ card:Card) {
        rankLabel.textColor = card.cardTupple.color
        rankLabel.text = card.cardTupple.rank
        suitLabel.text = card.cardTupple.suit
        cardImageView.image = card.cardTupple.image
    }
}

// ===================================================================================================

internal func createDeck() -> [Card] {
    var n = 1
    var deck = [Card]()
    while let cardItem = CardItem(rawValue: n)?.Description() {
        deck.append(Card(cardTupple:cardItem))
        n += 1
    }
    return deck
}

// -----------------------------------------------------------------------------------------------------

struct Card {
    var cardTupple:CardTupple
    func simpleDescription() -> String {
        return "The \(cardTupple.rank) of \(cardTupple.suit)"
    }
}

// ===================================================================================================


struct Hand:DataTypeProtocol {
    private var cards = [Card]()
    
    func createFullHand() -> Hand {
        var mutableCards = cards
        let numCards = 52
        for k in 0..<5 {
            let cardIndex = Int(arc4random_uniform(UInt32(numCards-k)))
            if let card = deck?.remove(at: cardIndex) {
                mutableCards.append(card)
            }
        }
        return Hand(cards:mutableCards)
    }
    
    subscript(index:Int) -> Card {
        return cards[index]
    }
    
    var numberOfItems:Int {
        return cards.count
    }
    
    func itemAtPosition(_ index:Int) -> Card {
        return cards[index]
    }
    // -------------------------------------------------------------
    // Add Item:
    private func insertItem(atIndex index:Int) -> Hand {
        var mutableCards = cards
        if let newCard = deck?.popLast() {
            mutableCards.insert(newCard, at: index)
        }
        return Hand(cards:mutableCards)
    }
    
    func addNewItemAtIndex(_ index:Int) -> Hand {
        return insertItem(atIndex:index)
    }
    
    // -------------------------------------------------------------
    // Remove Item:
    
    private func removeItem(atIndex index:Int) -> Hand {
        var mutableCards = cards
        mutableCards.remove(at: index)
        return Hand(cards:mutableCards)
    }
    
    internal func deleteItemAtIndex(_ index:Int) -> Hand {
        return removeItem(atIndex:index)
    }
    
    // -------------------------------------------------------------
    // Move Item:
    
    private func insertItem(_ card: Card, atIndex index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.insert(card, at: index)
        return Hand(cards:mutableCards)
    }
    
    func moveItem(_ fromIndex:Int, toIndex:Int) -> Hand {
        // Notice the functional approach:
        return deleteItemAtIndex(fromIndex).insertItem(cards[fromIndex], atIndex:toIndex)
    }
}


