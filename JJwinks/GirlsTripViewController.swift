//
//  GirlsTripViewController.swift
//  JJwinks
//
//  Created by Ryan Morrissey on 4/27/18.
//  Copyright © 2018 Morrissey. All rights reserved.
//

import UIKit

class GirlsTripViewController: UIViewController {

    
    @IBOutlet weak var girlsTripTableView: UITableView!
    
    var girlsShortArray = [("Girl Trip Short Nightgown - Pink")]
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        girlsTripTableView.delegate = self
        girlsTripTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
}
extension GirlsTripViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return girlsShortArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GirlsTripCell", for: indexPath) as! GirlsTripTableViewCell
        cell.update(title: girlsShortArray[indexPath.row])
        return cell
    }

}
