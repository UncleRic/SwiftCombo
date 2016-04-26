//  SwiftCombo
//
//  Created by Frederick C. Lee on 4/22/16.
//  Copyright © 2016 Amourine Technologies. All rights reserved.
// -----------------------------------------------------------------------------------------------------

import Foundation
import UIKit

typealias CardTupple = (rank:String, suit:String, color:UIColor, image:UIImage)

let kSpades = "Spades", kHearts = "Hearts", kClubs = "Clubs", kDiamonds = "Diamonds"
let kAce = "Act", kTwo = "Two", kThree = "Three", kFour = "Four", kFive = "Five"
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
            return(kAce, kSpades, UIColor.blackColor(), getImage(kAceSpades))
        case .TwoSpades:
            return(kTwo, kSpades, UIColor.blackColor(), getImage(kTwoSpades))
        case .ThreeSpades:
            return(kThree, kSpades, UIColor.blackColor(), getImage(kThreeSpades))
        case .FourSpades:
            return(kFour, kSpades, UIColor.blackColor(), getImage(kFourSpades))
        case .FiveSpades:
            return(kFive, kSpades, UIColor.blackColor(), getImage(kFiveSpades))
        case .SixSpades:
            return(kSix, kSpades, UIColor.blackColor(), getImage(kSixSpades))
        case .SevenSpades:
            return(kSeven, kSpades, UIColor.blackColor(), getImage(kSevenSpades))
        case .EightSpades:
            return(kEight, kSpades, UIColor.blackColor(), getImage(kEightSpades))
        case .NineSpades:
            return(kNine, kSpades, UIColor.blackColor(), getImage(kNineSpades))
        case .TenSpades:
            return(kTen, kSpades, UIColor.blackColor(), getImage(kTenSpades))
        case .JackSpades:
            return(kJack, kSpades, UIColor.blackColor(), getImage(kJackSpades))
        case .QueenSpades:
            return(kQueen, kSpades, UIColor.blackColor(), getImage(kQueenSpades))
        case .KingSpades:
            return(kKing, kSpades, UIColor.blackColor(), getImage(kKingSpades))
            
        // Hearts:
        case .AceHearts:
            return(kAce, kHearts, UIColor.redColor(), getImage(kAceHearts))
        case .TwoHearts:
            return(kTwo, kHearts, UIColor.redColor(), getImage(kTwoHearts))
        case .ThreeHearts:
            return(kThree, kHearts, UIColor.redColor(), getImage(kThreeHearts))
        case .FourHearts:
            return(kFour, kHearts, UIColor.redColor(), getImage(kFourHearts))
        case .FiveHearts:
            return(kFive, kHearts, UIColor.redColor(), getImage(kFiveHearts))
        case .SixHearts:
            return(kSix, kHearts, UIColor.redColor(), getImage(kSixHearts))
        case .SevenHearts:
            return(kSeven, kHearts, UIColor.redColor(), getImage(kSevenHearts))
        case .EightHearts:
            return(kEight, kHearts, UIColor.redColor(), getImage(kEightHearts))
        case .NineHearts:
            return(kNine, kHearts, UIColor.redColor(), getImage(kNineHearts))
        case .TenHearts:
            return(kTen, kHearts, UIColor.redColor(), getImage(kTenHearts))
        case .JackHearts:
            return(kJack, kHearts, UIColor.redColor(), getImage(kJackHearts))
        case .QueenHearts:
            return(kQueen, kHearts, UIColor.redColor(), getImage(kQueenHearts))
        case .KingHearts:
            return(kKing, kHearts, UIColor.redColor(), getImage(kKingHearts))
            
        // Clubs:
        case .AceClubs:
            return(kAce, kClubs, UIColor.blackColor(), getImage(kAceClubs))
        case .TwoClubs:
            return(kTwo, kClubs, UIColor.blackColor(), getImage(kTwoClubs))
        case .ThreeClubs:
            return(kThree, kClubs, UIColor.blackColor(), getImage(kThreeClubs))
        case .FourClubs:
            return(kFour, kClubs, UIColor.blackColor(), getImage(kFourClubs))
        case .FiveClubs:
            return(kFive, kClubs, UIColor.blackColor(), getImage(kFiveClubs))
        case .SixClubs:
            return(kSix, kClubs, UIColor.blackColor(), getImage(kSixClubs))
        case .SevenClubs:
            return(kSeven, kClubs, UIColor.blackColor(), getImage(kSevenClubs))
        case .EightClubs:
            return(kEight, kClubs, UIColor.blackColor(), getImage(kEightClubs))
        case .NineClubs:
            return(kNine, kClubs,  UIColor.blackColor(), getImage(kNineClubs))
        case .TenClubs:
            return(kTen, kClubs, UIColor.blackColor(), getImage(kTenClubs))
        case .JackClubs:
            return(kJack, kClubs, UIColor.blackColor(), getImage(kJackClubs))
        case .QueenClubs:
            return(kQueen, kClubs, UIColor.blackColor(), getImage(kQueenClubs))
        case .KingClubs:
            return(kKing, kClubs, UIColor.blackColor(), getImage(kKingClubs))
            
            
        // Diamonds:
        case .AceDiamonds:
            return(kAce, kDiamonds,UIColor.redColor(), getImage(kAceDiamonds))
        case .TwoDiamonds:
            return(kTwo, kDiamonds,UIColor.redColor(), getImage(kTwoDiamonds))
        case .ThreeDiamonds:
            return(kThree, kDiamonds,UIColor.redColor(), getImage(kThreeDiamonds))
        case .FourDiamonds:
            return(kFour, kDiamonds,UIColor.redColor(), getImage(kFourDiamonds))
        case .FiveDiamonds:
            return(kFive, kDiamonds,UIColor.redColor(), getImage(kFiveDiamonds))
        case .SixDiamonds:
            return(kSix, kDiamonds,UIColor.redColor(), getImage(kSixDiamonds))
        case .SevenDiamonds:
            return(kSeven, kDiamonds,UIColor.redColor(), getImage(kSevenDiamonds))
        case .EightDiamonds:
            return(kEight, kDiamonds,UIColor.redColor(), getImage(kEightDiamonds))
        case .NineDiamonds:
            return(kNine, kDiamonds,UIColor.redColor(), getImage(kNineDiamonds))
        case .TenDiamonds:
            return(kTen, kDiamonds,UIColor.redColor(), getImage(kTenDiamonds))
        case .JackDiamonds:
            return(kJack, kDiamonds,UIColor.redColor(), getImage(kJackDiamonds))
        case .QueenDiamonds:
            return(kQueen, kDiamonds,UIColor.redColor(), getImage(kQueenDiamonds))
        case .KingDiamonds:
            return(kKing, kDiamonds,UIColor.redColor(), getImage(kKingDiamonds))
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


