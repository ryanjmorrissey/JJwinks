//
//  RoomServiceMaxiViewController.swift
//  JJwinks
//
//  Created by Ryan Morrissey on 4/26/18.
//  Copyright © 2018 Morrissey. All rights reserved.
//

import UIKit

class RoomServiceMaxiViewController: UIViewController {

    @IBOutlet weak var maxiTableView: UITableView!
    var maxiArray = [("Room Service Maxi - Olive"),("Room Service Maxi - Oatmeal"),("Room Service Maxi - White"),("Room Service Maxi - Charcoal"), ("Room Service Maxi - Black")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        maxiTableView.delegate = self
        maxiTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
}
extension RoomServiceMaxiViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return maxiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "maxiCell", for: indexPath) as! MaxiTableViewCell
        cell.update(title: maxiArray[indexPath.row])
        return cell
    }
    
}
    

  


