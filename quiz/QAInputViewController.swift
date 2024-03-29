//
//  WelcomeViewController.swift
//  QA
//
//  Created by Matthew Olker on 2/28/17.
//  Copyright © 2017 CSC. All rights reserved.
//
//  View controller used to take in user input and 
//  add it to the questions and answers arrays in the original View controller.
//  This view shows text fields for the user to input questioins and answers
//  but only allows them to submit if both fields have something in them.
//  
//  As it is right now, it could be a problem with the simulator, but the 
//  keyboard won't come up unless I hit command+k

import UIKit

class QAInputViewController: UIViewController, UITextFieldDelegate {
    //text fields for user input
    @IBOutlet var questionTextField: UITextField!
    @IBOutlet var answerTextField: UITextField!
    @IBOutlet var InsertQA: UIButton!
    
    //function for allowing the user to submit input if and only if
    //both input fields are filled
    @IBAction func submitInput(_ sender: UIButton) {
        if questionTextField.hasText && answerTextField.hasText {
            //appends to global arrays in ViewController
            questions.append(questionTextField.text!)
            answers.append(answerTextField.text!)
            //sets the text fields to be empty 
            //placeholder text should be seen
            questionTextField.text = ""
            answerTextField.text = ""
            //deselects the text fields when submit
            questionTextField.endEditing(true)
            answerTextField.endEditing(true)
            questionTextField.backgroundColor = UIColor.green
            answerTextField.backgroundColor = UIColor.green
        } else {//an incorrect submission will make it red
            questionTextField.backgroundColor = UIColor.red
            answerTextField.backgroundColor = UIColor.red
        }
    }
    
    //if the user clicks off the text field, they stop editing it
    //also changes the background color of the text field to white
    //in case it is still green or red from submitting
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        if questionTextField.isEditing {
            questionTextField.resignFirstResponder()
        }
        questionTextField.backgroundColor = UIColor.white
        if answerTextField.isEditing {
            answerTextField.resignFirstResponder()
        }
        answerTextField.backgroundColor = UIColor.white
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
        InsertQA.layer.cornerRadius = 5
    }
}
