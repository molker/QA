//
//  ViewController.swift
//  quiz
//
//  Created by Matthew Olker on 28 February 2017.
//  Copyright © 2016 CSC. All rights reserved.
//  
//  This view controller is the initial view controller used
//  to make a "game" where a user takes a quiz and can check their 
//  answers.

import UIKit
//global arrays so they can be appended in other view controllers
var questions: [String] = ["From what is cognac is made?" ,
                           "What is 7+7?",
                           "What is the capital of Vermont"]

var answers: [String] = ["Grapes","14","Montpelier"]

class ViewController: UIViewController {
    //Labels used to show questions and answers
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    //deteremines what question to display currently
    var currentQuestionIndex: Int = 0
    //function to switch question and answer
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
           currentQuestionIndex = 0
        }
        questionLabel.text = questions[currentQuestionIndex]
        answerLabel.text = "???"
    }
    //makes sure the correct answer shows with the current question
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    //changes the questionLabel to show the correct question
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }

}

