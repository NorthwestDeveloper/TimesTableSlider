//
//  ViewController.swift
//  TimesTableSlider
//
//  Created by Admin on 8/1/16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!
    
    @IBOutlet var slider: UISlider!
    
    @IBAction func sliderChanged(_ sender: AnyObject) {
    
        table.reloadData()
    
    }
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 50

    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = String((Int(slider.value * 20)) * (indexPath.row + 1))
       
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

}
