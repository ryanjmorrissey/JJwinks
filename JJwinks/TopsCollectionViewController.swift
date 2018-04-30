//
//  TopsCollectionViewController.swift
//  JJwinks
//
//  Created by Ryan Morrissey on 4/25/18.
//  Copyright © 2018 Morrissey. All rights reserved.
//

import UIKit

class TopsCollectionViewController: UIViewController {

    @IBOutlet weak var topsTableView: UITableView!
    
    
    var topsArray = [("Slumber Party Top - Oatmeal"),("Slumber Party Top - Charcoal"),("Slumber Party Top - Black Rib"),("Slumber Party Top - Charcoal Rib"), ("Slumber Party Top - Black")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topsTableView.delegate = self
        topsTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
}
extension TopsCollectionViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topsCell", for: indexPath) as! TopsTableViewCell
        cell.update(title: topsArray[indexPath.row])
        return cell
    }
    
}

