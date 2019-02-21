//
//  Cell.swift
//  UISwitchBug
//
//  Created by Lukas2 on 21.02.19.
//

import UIKit

class SwitchWithRow: UISwitch {
    var row: Int = 0
}

class Cell: UITableViewCell {
    
    @IBOutlet var theSwitch: SwitchWithRow!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        theSwitch.setOn(false, animated: false)
    }
    
}
