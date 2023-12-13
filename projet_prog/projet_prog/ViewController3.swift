//
//  ViewController3.swift
//  projet_prog
//
//  Created by Tobias Wendl on 13/12/2023.
//

import UIKit

class ViewController3: UIViewController {
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        s1.value = 0
        s1.stepValue = 1
        s1.minimumValue = 0
        s1.maximumValue = 30
        
        s2.value = 0
        s2.stepValue = 1
        s2.minimumValue = 0
        s2.maximumValue = 30
        
        s3.value = 0
        s3.stepValue = 1
        s3.minimumValue = 0
        s3.maximumValue = 30
        
        s4.value = 0
        s4.stepValue = 1
        s4.minimumValue = 0
        s4.maximumValue = 30
        
        s5.value = 0
        s5.stepValue = 1
        s5.minimumValue = 0
        s5.maximumValue = 30
        
        s6.value = 0
        s6.stepValue = 1
        s6.minimumValue = 0
        s6.maximumValue = 30
        
        
        s1.addTarget(self, action: #selector(stepper1ValueChanged), for: .valueChanged)
        
        s2.addTarget(self, action: #selector(stepper2ValueChanged), for: .valueChanged)
        
        
        s3.addTarget(self, action: #selector(stepper3ValueChanged), for: .valueChanged)
        
        s4.addTarget(self, action: #selector(stepper4ValueChanged), for: .valueChanged)
        
        
        s5.addTarget(self, action: #selector(stepper5ValueChanged), for: .valueChanged)
        
        s6.addTarget(self, action: #selector(stepper6ValueChanged), for: .valueChanged)
        
        pts1.text = "\(Int(s1.value))"
        pts2.text = "\(Int(s2.value))"
        pts3.text = "\(Int(s3.value))"
        pts4.text = "\(Int(s4.value))"
        pts5.text = "\(Int(s5.value))"
        pts6.text = "\(Int(s6.value))"
        
        name.text = data
        score1.text = data1
        score2.text = data2
        
        
    }
    
    
    
    
    @objc func stepper1ValueChanged(){
        pts1.text = "\(Int(s1.value))"
    }
    
    @objc func stepper2ValueChanged(){
        pts2.text = "\(Int(s2.value))"
    }
    
    @objc func stepper3ValueChanged(){
        pts3.text = "\(Int(s3.value))"
    }
    
    @objc func stepper4ValueChanged(){
        pts4.text = "\(Int(s4.value))"
    }
    
    @objc func stepper5ValueChanged(){
        pts5.text = "\(Int(s5.value))"
    }
    
    @objc func stepper6ValueChanged(){
        pts6.text = "\(Int(s6.value))"

    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBOutlet weak var pts1: UILabel!
    @IBOutlet weak var pts2: UILabel!
    @IBOutlet weak var pts3: UILabel!
    @IBOutlet weak var pts4: UILabel!
    @IBOutlet weak var pts5: UILabel!
    @IBOutlet weak var pts6: UILabel!
    
    
    
    
    @IBOutlet weak var s1: UIStepper!
    @IBOutlet weak var s2: UIStepper!
    @IBOutlet weak var s3: UIStepper!
    @IBOutlet weak var s4: UIStepper!
    @IBOutlet weak var s5: UIStepper!
    @IBOutlet weak var s6: UIStepper!
    
    
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    
    var data : String?
    var data1 : String?
    var data2 : String?
    
    
    @IBOutlet weak var name: UILabel!
    
    @IBAction func unwindToCreateMatch(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source as! ViewController
        
        //let name = sourceViewController.
    }
}
