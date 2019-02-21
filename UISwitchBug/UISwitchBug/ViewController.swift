//
//  ViewController.swift
//  UISwitchBug
//
//  Created by Lukas2 on 21.02.19.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var array = Array<Bool>(repeating: false, count: 100)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func tappedSwitch(sender: UISwitch) {
        if let theSwitch = sender as? SwitchWithRow {
            array[theSwitch.row] = theSwitch.isOn
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? Cell {
            cell.theSwitch.row = indexPath.row
            cell.theSwitch.setOn(array[indexPath.row], animated: false)
            
            return cell
        }
        
        return UITableViewCell()
    }

}

