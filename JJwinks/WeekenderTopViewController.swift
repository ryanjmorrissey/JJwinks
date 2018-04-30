//
//  WeekenderTopViewController.swift
//  JJwinks
//
//  Created by Ryan Morrissey on 4/26/18.
//  Copyright © 2018 Morrissey. All rights reserved.
//

import UIKit

class WeekenderTopViewController: UIViewController {

    
    @IBOutlet weak var weekenderTableView: UITableView!
    var weekenderArray = [("The Weekender Top - Oatmeal")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weekenderTableView.delegate = self
        weekenderTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
}
extension WeekenderTopViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weekenderArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weekenderCell", for: indexPath) as! WeekenderTableViewCell
        cell.update(title: weekenderArray[indexPath.row])
        return cell
    }
    
}

  
