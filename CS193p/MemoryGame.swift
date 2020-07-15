//
//  MemoryGame.swift
//  CS193p-Lecture1
//
//  Created by Wei-Yun Wang on 2020/7/6.
//  Copyright © 2020 NuphorMosan. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card> //define the type of cards as Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    init(numOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>() //creates an empty Array<Card>
        for pairIndex in 0..<numOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFacedUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
 
