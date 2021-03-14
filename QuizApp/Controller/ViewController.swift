//
//  ViewController.swift
//  QuizApp
//
//  Created by Aarish Rahman on 06/03/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLable: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var questionImage: UIImageView!
    
    @IBOutlet var options: [UIButton]!
    var ques: [[String]] = Question.quiz
    var quesNumber = 0
    var quesimage =  [#imageLiteral(resourceName: "itachi-izanami-dejavu-e1337182627998"),#imageLiteral(resourceName: "Tobirama_Senju"),#imageLiteral(resourceName: "main-qimg-dae22dd5f3ce1dd34d2644f5d5cdfe39"),#imageLiteral(resourceName: "478e214eece850deea19bd37484a7441")]
    var imgno = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionImage.layer.cornerRadius = 5
        questionImage.clipsToBounds  = true
        // Do any additional setup after loading the view.
        options[0].setTitle(ques[quesNumber][1], for: .normal)
        options[1].setTitle(ques[quesNumber][2], for: .normal)
        options[2].setTitle(ques[quesNumber][3], for: .normal)
        options[3].setTitle(ques[quesNumber][4], for: .normal)
        questionImage.image = quesimage[0]
        questionLable.text = ques[0][0]
        options[0].layer.borderColor = UIColor.gray.cgColor
        options[1].layer.borderColor = UIColor.gray.cgColor
        options[2].layer.borderColor = UIColor.gray.cgColor
        options[3].layer.borderColor = UIColor.gray.cgColor
        

      
    }

    
    @IBAction func ansButton(_ sender: UIButton) {
        
        
        if let userAns = sender.currentTitle {
            
            if userAns == ques[quesNumber][5]{
                sender.backgroundColor = UIColor.green
                
            }
            else {
                sender.backgroundColor = UIColor.red
                
            }
            
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        }
       
    
    
    @objc func updateUI(){
        questionImage.image = quesimage[0]
        questionLable.text = ques[0][0]
        options[0].setTitle(ques[0][1], for: .normal)
        options[1].setTitle(ques[0][2], for: .normal)
        options[2].setTitle(ques[0][3], for: .normal)
        options[3].setTitle(ques[0][4], for: .normal)
        if quesNumber+1<ques.count && imgno<quesimage.count{
            
            imgno+=1
            quesNumber+=1
            options[0].setTitle(ques[quesNumber][1], for: .normal)
            options[1].setTitle(ques[quesNumber][2], for: .normal)
            options[2].setTitle(ques[quesNumber][3], for: .normal)
            options[3].setTitle(ques[quesNumber][4], for: .normal)
            questionLable.text = ques[quesNumber][0]
            questionImage.image = quesimage[imgno]
            
            progressBar.progress = Float(quesNumber+1)/Float(ques.count)
        }
        else{
            quesNumber=0
            imgno = 0
        }
        
    }
    
}

