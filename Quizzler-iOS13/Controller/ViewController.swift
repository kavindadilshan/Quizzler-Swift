    //
    //  ViewController.swift
    //  Quizzler-iOS13
    //
    //  Created by Angela Yu on 12/07/2019.
    //  Copyright © 2019 The App Brewery. All rights reserved.
    //

    import UIKit

    class ViewController: UIViewController {
        
        @IBOutlet weak var progressbar: UIProgressView!
        @IBOutlet weak var questionLabel: UILabel!
        @IBOutlet weak var progressBar: UIImageView!
        
        @IBOutlet weak var trueButton: UIButton!
        
        @IBOutlet weak var falseButton: UIButton!
        
        var quizBrain = QuizBrain()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            progressbar.progress = 0
            updateQuiz()
        }

        @IBAction func buttonAction(_ sender: UIButton) {
            let userAnswer = sender.currentTitle!
//            quizBrain.checkAnswer(userAnswer:userAnswer)
            let userGotItRight = quizBrain.checkAnswer(userAnswer)
            
            
            if (userGotItRight) {
                sender.backgroundColor = UIColor.green
            }else{
                sender.backgroundColor = UIColor.red
            }
            
            quizBrain.nextQuestion()
            
            
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateQuiz), userInfo: nil, repeats: true)
        }
        
        @objc func updateQuiz () {
            questionLabel.text = quizBrain.getQuestiontext()
            progressbar.progress = quizBrain.getProgress()
            
            trueButton.backgroundColor = UIColor.clear
            falseButton.backgroundColor = UIColor.clear
        }
        
    }

