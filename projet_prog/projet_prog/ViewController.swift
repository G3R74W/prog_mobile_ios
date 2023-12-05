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
        
        for i in 0...50 {
            var legend = "match " + String(i)
            var picture = Int.random(in:1...5)
            var d = MyData(legend: legend, picture : picture)
            data.append(d)
        }
        
        dataTableView.dataSource = self
    }



    @IBOutlet weak var dataTableView: UITableView!
    var data = [MyData]()
}


