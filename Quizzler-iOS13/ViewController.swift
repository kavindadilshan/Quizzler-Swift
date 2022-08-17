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
        
        let quizes = [
            Questions(q:"Are you married",a: "True"),
            Questions(q: "Are you single?", a: "False"),
            Questions(q: "You have boyfriend?", a: "True")
        ]
        
        var questionNumber = 0
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            progressbar.progress = 0
            updateQuiz()
        }

        @IBAction func buttonAction(_ sender: UIButton) {
           
            if (quizes[questionNumber].answer == sender.currentTitle) {
                sender.backgroundColor = UIColor.green
            }else{
                sender.backgroundColor = UIColor.red
            }
            
            progressbar.progress = Float(questionNumber+1) / Float(quizes.count)
            //Array.count to use get length
            if ((quizes.count-1)>questionNumber){
                questionNumber+=1
            }
            
            
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateQuiz), userInfo: nil, repeats: true)
        }
        
        @objc func updateQuiz () {
            questionLabel.text = quizes[questionNumber].questions
            trueButton.backgroundColor = UIColor.clear
            falseButton.backgroundColor = UIColor.clear
        }
        
    }

