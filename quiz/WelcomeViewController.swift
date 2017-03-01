//
//  WelcomeViewController.swift
//  QA
//
//  Created by Matthew Olker on 2/28/17.
//  Copyright © 2017 CSC. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var takeQuiz: UIButton!
    
    @IBAction func goToQuiz(_ sender: UIButton) {
        performSegue(withIdentifier: "nextView", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
