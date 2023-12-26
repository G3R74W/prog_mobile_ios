//
//  Data.swift
//  projet_prog
//
//  Created by Tobias Wendl on 28/11/2023.
//

import Foundation

class MyData {
    var legend : String
    var score1 : String
    var score2 : String
    
    var picture : Int
    
    init(legend: String, score1: String, score2: String, picture: Int) {
        self.legend = legend
        self.score1 = score1
        self.score2 = score2
        self.picture = picture
    }
    
}
