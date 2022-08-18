//
//  QuizBrains.swift
//  Quizzler-iOS13
//
//  Created by Ceyentra Technologies on 2022-08-17.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    var quizes = [
        Questions(q:"Are you married",a: "True"),
        Questions(q: "Are you single?", a: "False"),
        Questions(q: "You have boyfriend?", a: "True")
    ],
        
    questionNumber = 0
    
    func checkAnswer(_ userAnswer:String)->Bool{
        if (userAnswer == quizes[questionNumber].answer){
            return true
        }else{
            return false
        }
    }
    
    func getQuestiontext ()->String{
        return quizes[questionNumber].questions
    }
    
    func getProgress () ->Float {
        return Float(questionNumber) / Float(quizes.count)
    }
    
    mutating func nextQuestion () {
        if (questionNumber+1 < quizes.count){
             questionNumber+=1
        }else{
            questionNumber=0
        }
    }
}
