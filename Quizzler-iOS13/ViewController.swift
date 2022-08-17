    //
    //  ViewController.swift
    //  Quizzler-iOS13
    //
    //  Created by Angela Yu on 12/07/2019.
    //  Copyright © 2019 The App Brewery. All rights reserved.
    //

    import UIKit

    class ViewController: UIViewController {
        
        @IBOutlet weak var questionLabel: UILabel!
        @IBOutlet weak var progressBar: UIImageView!
        
        let quizes = [
            Questions(q:"Are you married",a: "True"),
            Questions(q: "Are you single?", a: "False"),
            Questions(q: "You have boyfriend?", a: "True")
        ]
        
        var questionNumber = 0
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            updateQuiz()
        }

        @IBAction func buttonAction(_ sender: UIButton) {
           
            if (quizes[questionNumber].answer == sender.currentTitle) {
                print("correct")
            }else{
                print("incorrect")
            }
            
            //Array.count to use get length
            if ((quizes.count-1)>questionNumber){
                questionNumber+=1
            }
            
            updateQuiz()
        }
        
        func updateQuiz () {
            questionLabel.text = quizes[questionNumber].questions
        }
        
    }

