//
//  ViewController.swift
//  QuizApp
//
//  Created by Aarish Rahman on 06/03/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLable: UILabel!
    @IBOutlet var aButton: UIButton!
    @IBOutlet var cButton: UIButton!
    @IBOutlet var dButton: UIButton!
    @IBOutlet var bButton: UIButton!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var questionImage: UIImageView!
    var ques: [[String]] = Question.quiz
    var quesNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionImage.layer.cornerRadius = 15.0
        questionImage.clipsToBounds  = true
        
        // Do any additional setup after loading the view.
        aButton.setTitle(ques[quesNumber][1], for: .normal)
        bButton.setTitle(ques[quesNumber][2], for: .normal)
        cButton.setTitle(ques[quesNumber][3], for: .normal)
        dButton.setTitle(ques[quesNumber][4], for: .normal)
        questionImage.image = #imageLiteral(resourceName: "avatars-000318285440-0dn57i-t500x500")
        questionLable.text = ques[0][0]
        updateUI()
    }

    
    @IBAction func ansButton(_ sender: UIButton) {
       
    }
    
    func updateUI(){
        
    }
    
}

