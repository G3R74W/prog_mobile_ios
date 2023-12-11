//
//  ViewController.swift
//  projet_prog
//
//  Created by Tobias Wendl on 28/11/2023.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath) as! TableViewCell
        let row = indexPath.row
        cell.legend.text = data[row].legend
        cell.picture.image = UIImage(named: String(data[row].picture))
        return cell
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        



        
        
        
        dataTableView.dataSource = self
    }
    
    @IBAction func unwindToCreateMatch(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source as! ViewController2
        // Use data from the view controller which initiated the unwind segue
        let team1 = sourceViewController.team1.text!
        let team2 = sourceViewController.team2.text!
        print (team1)
        print (team2)
        
        var legend = team1 + " vs " + team2
        var picture = Int.random(in:1...4)
        var d = MyData(legend: legend, picture : picture)
        data.append(d)
        
    }

    
    @IBOutlet weak var dataTableView: UITableView!
    var data = [MyData]()
    
    var matchCounter = 0
}


