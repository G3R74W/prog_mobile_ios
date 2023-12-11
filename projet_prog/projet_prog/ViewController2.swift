//
//  ViewController2.swift
//  projet_prog
//
//  Created by Tobias Wendl on 11/12/2023.
//

import UIKit

class ViewController2: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        txt1.delegate = self
        txt2.delegate = self
        
        stepper1.minimumValue = 0
        stepper1.maximumValue = 200
        stepper1.stepValue = 1
        stepper1.value = 0
        
        stepper2.minimumValue = 0
        stepper2.maximumValue = 200
        stepper2.stepValue = 1
        stepper2.value = 0
        
        stepper1.addTarget(self, action: #selector(stepper1ValueChanged), for: .valueChanged)
        
        stepper2.addTarget(self, action: #selector(stepper2ValueChanged), for: .valueChanged)
        
        score1.text = "\(Int(stepper1.value))"
        score2.text = "\(Int(stepper2.value))"
    }
    
    @objc func stepper1ValueChanged(){
        score1.text = "\(Int(stepper1.value))"
    }
    
    @objc func stepper2ValueChanged(){
        score2.text = "\(Int(stepper2.value))"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txt1.resignFirstResponder()
        txt2.resignFirstResponder()
        return true
    }
    
    @IBAction func addTeam1(_ sender: Any) {
        if let enteredText = txt1.text, !enteredText.isEmpty {
            team1.text = enteredText
        }
    }
    
    @IBAction func addTeam2(_ sender: Any) {
        if let enteredText2 = txt2.text, !enteredText2.isEmpty {
            team2.text = enteredText2
        }
    }
    
    //maj des equipes
    
    @IBOutlet weak var team1: UILabel!
    
    @IBOutlet weak var team2: UILabel!
    
    
    @IBOutlet weak var txt1: UITextField!
    
    @IBOutlet weak var txt2: UITextField!
    
    
    //augmentation des scores
    @IBOutlet weak var score1: UILabel!
    
    @IBOutlet weak var score2: UILabel!
    
    
    @IBOutlet weak var stepper1: UIStepper!
    
    @IBOutlet weak var stepper2: UIStepper!
    
}
     
