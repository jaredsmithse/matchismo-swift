//
//  PlayingCard.swift
//  SwiftMatchismo
//
//  Created by Jared Smith on 6/7/14.
//  Copyright (c) 2014 jaredsmithse. All rights reserved.
//

import Foundation

class PlayingCard: Card {
    
    func match(otherCards:Array<PlayingCard>) -> Int {
        var score = 0;
        for otherCard in otherCards {
            if self.suit == otherCard.suit {
                score += 1
            }
            if self.rank == otherCard.rank {
                score += 4
            }
        }
        return score;
    }
    
    
    func getMatches(otherCards:Array<PlayingCard>) -> Array<PlayingCard> {
        var matchingCards: PlayingCard[] = []
        for otherCard in otherCards {
            if self.suit == otherCard.suit {
                matchingCards.append(otherCard)
            }
            if self.rank == otherCard.rank {
                matchingCards.append(otherCard)
            }
        }
        return matchingCards
    }
    
    func contents() -> String {
        return rankStrings()[Int(rank!)] + self.suit!
    }
    
    func validSuits() -> String[] {
        return ["♥︎","♦︎","♠︎","♣︎"]
    }

    //defining getters and setters, cool syntax
    var suit: String? {
    get {
        if self.suit {
            return self.suit
        } else {
            return "?"
        }
    }
    set {
        if find(validSuits(), newValue!) {
            self.suit = newValue
        }
    }
    }
    
    
    func rankStrings() -> Array<String> {
        return ["?","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    func maxRank() -> Int {
        return rankStrings().count - 1
    }
    
    var rank: Int? {
    get {
        return self.rank
    }
    set {
        if newValue <= self.maxRank() {
            self.rank = newValue
        }
    }
    }
    
    
    
}
