//
//  TableViewCellPlayer.swift
//  projet_prog
//
//  Created by Flo on 05/12/2023.
//

import UIKit

class TableViewCellPlayer: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var nomJoueur: UILabel!
}
