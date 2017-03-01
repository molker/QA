//
//  WelcomeViewController.swift
//  QA
//
//  Created by Matthew Olker on 2/28/17.
//  Copyright © 2017 CSC. All rights reserved.
//

import UIKit

class QAInputViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var questionTextField: UITextField!
    @IBOutlet var answerTextField: UITextField!
    
    @IBAction func submitInput(_ sender: UIButton) {
        if questionTextField.hasText && answerTextField.hasText {
            questions.append(questionTextField.text!)
            answers.append(answerTextField.text!)
            questionTextField.text = ""
            answerTextField.text = ""
            questionTextField.endEditing(true)
            answerTextField.endEditing(true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
