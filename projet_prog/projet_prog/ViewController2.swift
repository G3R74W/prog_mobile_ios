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
    
    @IBOutlet weak var team1: UILabel!
    
    @IBOutlet weak var team2: UILabel!
    
    
    @IBOutlet weak var txt1: UITextField!
    
    @IBOutlet weak var txt2: UITextField!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
