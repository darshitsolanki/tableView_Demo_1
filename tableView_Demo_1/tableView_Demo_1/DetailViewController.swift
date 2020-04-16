//
//  DetailViewController.swift
//  tableView_Demo_1
//
//  Created by Third Rock Techkno on 16/04/20.
//  Copyright © 2020 Third Rock Techkno. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var txt = ""
    @IBOutlet weak var detailLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLbl.text = txt
        
    }
    

    

}
