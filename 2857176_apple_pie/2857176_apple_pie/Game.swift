//
//  Game.swift
//  2857176_apple_pie
//
//  Created by Alumno on 06/03/24.
//

import Foundation

struct Game{
    var word:String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWord: String{
        var guessedWord = ""
        for letter in word{
            if guessedLetters.contains(letter){
                guessedWord += "\(letter)"
            }else{
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter:Character){
        guessedLetters.append(letter)
        if !word.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }
}



