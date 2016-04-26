//  SwiftCombo
//
//  Created by Frederick C. Lee on 4/22/16.
//  Copyright © 2016 Amourine Technologies. All rights reserved.
// -----------------------------------------------------------------------------------------------------

import Foundation
import UIKit

typealias CardTupple = (rank:String, suit:String, image:UIImage)

let kSpades = "Spades", kHearts = "Hearts", kClubs = "Clubs", kDiamonds = "Diamonds"
let kAce = "Act", kTwo = "Two", kThree = "Three", kFour = "Four", kFive = "Five"
let kSix = "Six", kSeven = "Seven", kEight = "Eight", kNine = "Nine", kTen = "Ten"
let kJack = "Jack", kQueen = "Queen", kKing = "King"

let kAceSpades = "AceSpades"
let kTwoSpades = "TwoSpades", kThreeSpades = "ThreeSpades", kFourSpades = "FourSpades", kFiveSpades = "FiveSpades"
let kSixSpades = "SixSpades", kSevenSpades = "SevenSpades", kEightSpades = "EightSpades", kNineSpades = "NineSpades"
let kTenSpades = "TenSpades", kJackSpades = "JackSpades", kQueenSpades = "QueenSpades", kKingSpades = "KingSpades"

let kAceHearts = "AceHearts"
let kTwoHearts = "TwoHearts", kThreeHearts = "ThreeHearts", kFourHearts = "FourHearts", kFiveHearts = "FiveHearts"
let kSixHearts = "SixHearts", kSevenHearts = "SevenHearts", kEightHearts = "EightHearts", kNineHearts = "NineHearts"
let kTenHearts = "TenHearts", kJackHearts = "JackHearts", kQueenHearts = "QueenHearts", kKingHearts = "KingHearts"

let kAceClubs = "AceClubs"
let kTwoClubs = "TwoClubs", kThreeClubs = "ThreeClubs", kFourClubs = "FourClubs", kFiveClubs = "FiveClubs"
let kSixClubs = "SixClubs", kSevenClubs = "SevenClubs", kEightClubs = "EightClubs", kNineClubs = "NineClubs"
let kTenClubs = "TenClubs", kJackClubs = "JackClubs", kQueenClubs = "QueenClubs", kKingClubs = "KingClubs"

let kAceDiamonds = "AceDiamonds"
let kTwoDiamonds = "TwoDiamonds", kThreeDiamonds = "ThreeDiamonds", kFourDiamonds = "FourDiamonds", kFiveDiamonds = "FiveDiamonds"
let kSixDiamonds = "SixDiamonds", kSevenDiamonds = "SevenDiamonds", kEightDiamonds = "EightDiamonds", kNineDiamonds = "NineDiamonds"
let kTenDiamonds = "TenDiamonds", kJackDiamonds = "JackDiamonds", kQueenDiamonds = "QueenDiamonds", kKingDiamonds = "KingDiamonds"

internal func getImage(name:String) -> UIImage {
    guard let myImage = UIImage(named:name) else {
        fatalError("Missing UIImage: \(name)")
    }
    return myImage
}

enum CardItem: Int {
    case AceSpades = 1
    case TwoSpades, ThreeSpades, FourSpades, FiveSpades, SixSpades, SevenSpades,
    EightSpades, NineSpades, TenSpades, JackSpades, QueenSpades, KingSpades
    case AceHearts
    case TwoHearts, ThreeHearts, FourHearts, FiveHearts, SixHearts, SevenHearts,
    EightHearts, NineHearts, TenHearts, JackHearts, QueenHearts, KingHearts
    case AceClubs
    case TwoClubs, ThreeClubs, FourClubs, FiveClubs, SixClubs, SevenClubs,
    EightClubs, NineClubs, TenClubs, JackClubs, QueenClubs, KingClubs
    case AceDiamonds
    case TwoDiamonds, ThreeDiamonds, FourDiamonds, FiveDiamonds, SixDiamonds, SevenDiamonds,
    EightDiamonds, NineDiamonds, TenDiamonds, JackDiamonds, QueenDiamonds, KingDiamonds
    func Description() -> CardTupple {
        switch self {
        // Spades:
        case .AceSpades:
            return(kAce,kSpades,getImage(kAceSpades))
        case .TwoSpades:
            return(kTwo,kSpades,getImage(kTwoSpades))
        case .ThreeSpades:
            return(kThree,kSpades,getImage(kThreeSpades))
        case .FourSpades:
            return(kFour,kSpades,getImage(kFourSpades))
        case .FiveSpades:
            return(kFive,kSpades,getImage(kFiveSpades))
        case .SixSpades:
            return(kSix,kSpades,getImage(kSixSpades))
        case .SevenSpades:
            return(kSeven,kSpades,getImage(kSevenSpades))
        case .EightSpades:
            return(kEight,kSpades,getImage(kEightSpades))
        case .NineSpades:
            return(kNine,kSpades,getImage(kNineSpades))
        case .TenSpades:
            return(kTen, kSpades,getImage(kTenSpades))
        case .JackSpades:
            return(kJack, kSpades,getImage(kJackSpades))
        case .QueenSpades:
            return(kQueen, kSpades,getImage(kQueenSpades))
        case .KingSpades:
            return(kKing, kSpades,getImage(kKingSpades))
            
        // Hearts:
        case .AceHearts:
            return(kAce,kHearts,getImage(kAceHearts))
        case .TwoHearts:
            return(kTwo,kHearts,getImage(kTwoHearts))
        case .ThreeHearts:
            return(kThree,kHearts,getImage(kThreeHearts))
        case .FourHearts:
            return(kFour,kHearts,getImage(kFourHearts))
        case .FiveHearts:
            return(kFive,kHearts,getImage(kFiveHearts))
        case .SixHearts:
            return(kSix,kHearts,getImage(kSixHearts))
        case .SevenHearts:
            return(kSeven,kHearts,getImage(kSevenHearts))
        case .EightHearts:
            return(kEight,kHearts,getImage(kEightHearts))
        case .NineHearts:
            return(kNine,kHearts,getImage(kNineHearts))
        case .TenHearts:
            return(kTen, kHearts,getImage(kTenHearts))
        case .JackHearts:
            return(kJack, kHearts,getImage(kJackHearts))
        case .QueenHearts:
            return(kQueen, kHearts,getImage(kQueenHearts))
        case .KingHearts:
            return(kKing, kHearts,getImage(kKingHearts))
            
        // Clubs:
        case .AceClubs:
            return(kAce,kClubs,getImage(kAceClubs))
        case .TwoClubs:
            return(kTwo,kClubs,getImage(kTwoClubs))
        case .ThreeClubs:
            return(kThree,kClubs,getImage(kThreeClubs))
        case .FourClubs:
            return(kFour,kClubs,getImage(kFourClubs))
        case .FiveClubs:
            return(kFive,kClubs,getImage(kFiveClubs))
        case .SixClubs:
            return(kSix,kClubs,getImage(kSixClubs))
        case .SevenClubs:
            return(kSeven,kClubs,getImage(kSevenClubs))
        case .EightClubs:
            return(kEight,kClubs,getImage(kEightClubs))
        case .NineClubs:
            return(kNine,kClubs,getImage(kNineClubs))
        case .TenClubs:
            return(kTen, kClubs,getImage(kTenClubs))
        case .JackClubs:
            return(kJack, kClubs,getImage(kJackClubs))
        case .QueenClubs:
            return(kQueen, kClubs,getImage(kQueenClubs))
        case .KingClubs:
            return(kKing, kClubs,getImage(kKingClubs))
            
            
        // Diamonds:
        case .AceDiamonds:
            return(kAce,kDiamonds,getImage(kAceDiamonds))
        case .TwoDiamonds:
            return(kTwo,kDiamonds,getImage(kTwoDiamonds))
        case .ThreeDiamonds:
            return(kThree,kDiamonds,getImage(kThreeDiamonds))
        case .FourDiamonds:
            return(kFour,kDiamonds,getImage(kFourDiamonds))
        case .FiveDiamonds:
            return(kFive,kDiamonds,getImage(kFiveDiamonds))
        case .SixDiamonds:
            return(kSix,kDiamonds,getImage(kSixDiamonds))
        case .SevenDiamonds:
            return(kSeven,kDiamonds,getImage(kSevenDiamonds))
        case .EightDiamonds:
            return(kEight,kDiamonds,getImage(kEightDiamonds))
        case .NineDiamonds:
            return(kNine,kDiamonds,getImage(kNineDiamonds))
        case .TenDiamonds:
            return(kTen, kDiamonds,getImage(kTenDiamonds))
        case .JackDiamonds:
            return(kJack, kDiamonds,getImage(kJackDiamonds))
        case .QueenDiamonds:
            return(kQueen, kDiamonds,getImage(kQueenDiamonds))
        case .KingDiamonds:
            return(kKing, kDiamonds,getImage(kKingDiamonds))
        }
    }
}

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
//        rankLabel.textColor = card.suit.color()
//        rankLabel.text = card.rank.simpleDescription()
//        suitLabel.text = card.suit.simpleDescription()
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
            if let card = deck?.removeAtIndex(cardIndex) {
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


