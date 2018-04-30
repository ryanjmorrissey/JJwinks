//
//  BottomsCollectionViewController.swift
//  JJwinks
//
//  Created by Ryan Morrissey on 4/25/18.
//  Copyright © 2018 Morrissey. All rights reserved.
//

import UIKit

class BottomsCollectionViewController: UIViewController {

   
    

    @IBOutlet weak var tableView: UITableView!
    






    var happyHourPantArray = [("The Happy Hour Pant - Pink"),("The Happy Hour Pant - Charcoal"),("The Happy Hour Pant - Black + Charcoal Panel"),("The Happy Hour Pant - Black")]
    var bottomsImages = [UIImage(named: "The Happy Hour Pant - Pink"), UIImage(named: "The Happy Hour Pant - Charcoal"),UIImage(named: "The Happy Hour Pant - Black w/ Charcoal Panel"),UIImage(named: "The Happy Hour Pant - Black")]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension BottomsCollectionViewController: UITableViewDelegate, UITableViewDataSource {

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return happyHourPantArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HappyHourPantCell", for: indexPath) as! BottomsTableViewCell
        cell.update(title: happyHourPantArray[indexPath.row])
        
        return cell
    }

}

//import UIKit
//
//class BottomsCollectionViewController: UIViewController {
//
//    @IBOutlet weak var tableView: UITableView!

//    let bottoms = [("The Happy Hour Pant - Pink"),("The Happy Hour Pant - Charcoal"),("The Happy Hour Pant - Black w/ Charcoal Panel"),("The Happy Hour Pant - Black")]
//
//    let bottomsImages = [UIImage(named: "The Happy Hour Pant - Pink"), UIImage(named: "The Happy Hour Pant - Charcoal"),UIImage(named: "The Happy Hour Pant - Black w/ Charcoal Panel"),UIImage(named: "The Happy Hour Pant - Black")]
//
//    override func viewDidLoad() {
//
//        super.viewDidLoad()
//
//    }
//
//
//
//    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//
//        return 1
//
//    }
//
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return bottoms.count
//
//    }
//
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! BottomsCollectionViewController
//
//        cell.photo.image = self.bottomsImages[indexPath .row]
//
//        cell.label.text = self.bottoms[indexPath .row]
//
//        return cell
//
//    }
//
//}



//("The Walk of Fame Short - White"),("The Walk of Fame Short - Charcoal"),("The Walk of Fame Short - Black"),

//UIImage(named: "The Walk of Fame Short - White"), UIImage(named: "The Walk of Fame Short - Charcoal"), UIImage(named: "The Walk of Fame Short - Black"),
//
//















