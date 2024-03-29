//
//  WelcomeViewController.swift
//  QA
//
//  Created by Matthew Olker on 2/28/17.
//  Copyright © 2017 CSC. All rights reserved.
//
//  View controller used to give an opening welcome 
//  to the user. A button is used to switch to the quiz itself

import UIKit

class WelcomeViewController: UIViewController {
    //initialize the button used on this view
    @IBOutlet var takeQuiz: UIButton!
    //uses a modal segue to switch to the tab bar controller
    @IBAction func goToQuiz(_ sender: UIButton) {
        performSegue(withIdentifier: "nextView", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = randColor()
    }
    
    func randColor() -> UIColor {
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red:red, green:green, blue:blue, alpha: 1.0)
    }
    
}
