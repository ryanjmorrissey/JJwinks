//
//  HyggeRobeRibbedViewController.swift
//  JJwinks
//
//  Created by Ryan Morrissey on 4/26/18.
//  Copyright © 2018 Morrissey. All rights reserved.
//

import UIKit

class HyggeRobeRibbedViewController: UIViewController {

    @IBOutlet weak var ribbedTableView: UITableView!
    var ribbedArray = [("Hygge Robe - Grey Rib")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ribbedTableView.delegate = self
        ribbedTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
}
extension HyggeRobeRibbedViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ribbedArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ribbedCell", for: indexPath) as! RibbedTableViewCell
        cell.update(title: ribbedArray[indexPath.row])
        return cell
    }
    
}
