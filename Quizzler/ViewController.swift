//
//  ViewController.swift
//  Quizzler
//
//  Created by Bilgihan Köse on 23.05.2020.
//  Copyright © 2020 Bilgihan Kose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    
    //2D Array for check answer
    let quiz = [
        ["Four + Two is equal to Six","True"],
        ["Five - Three is greater than One","True"],
        ["Three + Eight is less than Ten", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnser = sender.currentTitle! //Kesinlikte bir degere sahip oldugunu bildigimiz icin string gelecek dedik.
        let actualAnser = quiz[questionNumber][1] //2D arrayde cevabin bulundugu yer
        
        if userAnser == actualAnser {
            print("Correct!")
        } else {
            print("Wrong :(")
        }
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        updateUI()
    }
        func updateUI(){
            questionLabel.text = quiz[questionNumber][0] //2D arrayin ilk elemani yani sorunun bulundugu yer.
        }
        
        
    }
    
