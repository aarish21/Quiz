//
//  ViewController.swift
//  QuizApp
//
//  Created by Aarish Rahman on 06/03/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLable: UILabel!
    @IBOutlet var TrueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    @IBOutlet var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func ansButton(_ sender: UIButton) {
        questionLable.text = "hello"
    }
    
}

