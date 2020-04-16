//
//  TableViewCell.swift
//  tableView_Demo_1
//
//  Created by Third Rock Techkno on 16/04/20.
//  Copyright © 2020 Third Rock Techkno. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
