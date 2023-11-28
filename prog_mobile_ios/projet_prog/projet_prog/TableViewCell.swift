//
//  TableViewCell.swift
//  projet_prog
//
//  Created by Tobias Wendl on 28/11/2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var legend: UILabel!
}
