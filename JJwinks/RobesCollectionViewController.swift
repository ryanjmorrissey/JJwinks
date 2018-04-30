//
//  RobesCollectionViewController.swift
//  JJwinks
//
//  Created by Ryan Morrissey on 4/25/18.
//  Copyright © 2018 Morrissey. All rights reserved.
//

import UIKit

class RobesCollectionViewController: UIViewController {

    @IBOutlet weak var robesTableView: UITableView!
    var robesArray = [("Hygge Robe - White"),("Hygge Robe - Charcoal"),("Hygge Robe - Oatmeal"),("Hygge Robe - Black Heather"), ("Hygge Robe - Black")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        robesTableView.delegate = self
        robesTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
}
extension RobesCollectionViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return robesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "robesCell", for: indexPath) as! RobesTableViewCell
        cell.update(title: robesArray[indexPath.row])
        return cell
    }
    
}
