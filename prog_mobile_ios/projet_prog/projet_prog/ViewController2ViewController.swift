//
//  ViewController2ViewController.swift
//  projet_prog
//
//  Created by Flo on 28/11/2023.
//

import UIKit

class ViewController2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        nameMatch.text = "match 1"
        
        for i in 0...8 {
            var nomJoueur = "nom" + String(i)
        }
    }
    

    @IBOutlet weak var DataCell: UITableView!
    
    @IBOutlet weak var nameMatch: UILabel!
    var namePlayer = [nomsJoueurs]()
    
}
