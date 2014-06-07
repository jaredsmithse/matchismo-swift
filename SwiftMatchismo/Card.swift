//
//  Card.swift
//  SwiftMatchismo
//
//  Created by Jared Smith on 6/7/14.
//  Copyright (c) 2014 jaredsmithse. All rights reserved.
//

import Foundation

class Card {
    
    var contents: String?
    
    func match(otherCards:Array<Card>) -> Int {
        var score = 0
        for card in otherCards {
            if card.contents == self.contents {
                score = 1;
            }
        }
        return score
    }
    
}