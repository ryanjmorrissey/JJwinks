//
//  WalkOfFameViewController.swift
//  JJwinks
//
//  Created by Ryan Morrissey on 4/26/18.
//  Copyright © 2018 Morrissey. All rights reserved.
//

import UIKit

class WalkOfFameViewController: UIViewController {

    
    @IBOutlet weak var walkOfFameTableView: UITableView!
    
    var walkOfFameArray = [("The Walk of Fame Short - White"),("The Walk of Fame Short - Charcoal"),("The Walk of Fame Short - Black")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        walkOfFameTableView.delegate = self
        walkOfFameTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
}
    extension WalkOfFameViewController: UITableViewDelegate, UITableViewDataSource {
        
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return walkOfFameArray.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "WalkOfFameCell", for: indexPath) as! WalfOfFameTableViewCell
            cell.update(title: walkOfFameArray[indexPath.row])
            return cell
        }
        
    }

   


