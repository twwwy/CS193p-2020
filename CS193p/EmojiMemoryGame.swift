//
//  EmojiMemoryGame.swift
//  CS193p-Lecture1
//
//  Created by Wei-Yun Wang on 2020/7/6.
//  Copyright © 2020 NuphorMosan. All rights reserved.
//

import SwiftUI
// The ViewModel

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
//  "private" mean only the class EmojiMeoryGame can view and modify the model. Whereas "private(set)" means only the class EmojiMeoryGame can modif the model, but others can view.
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🥈", "🥉", "🥇"]
        return MemoryGame<String>(numOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    //MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}

