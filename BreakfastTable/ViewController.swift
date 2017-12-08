//
//  ViewController.swift
//  BreakfastTable
//
//  Created by Steven Lipton on 12/4/17.
//  Copyright © 2017 Steven Lipton. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    
    var breakfastStuff = ["French Toast","Pancakes"]

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return breakfastStuff.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = breakfastStuff[row]
        cell.imageView?.image = UIImage(named: breakfastStuff[row] + " small")
        if row % 2 == 0 {
            cell.backgroundColor = UIColor(named: "Light Blue")
        } else {
            cell.backgroundColor = UIColor(named: "Pale Yellow")
        }
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        let displayVC = DisplayViewController()
        displayVC.title = breakfastStuff[row]
        navigationController?.pushViewController(displayVC, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Breakfast"
        if let dataAsset = NSDataAsset(name: "Breakfast"){
            let string = String(data: dataAsset.data, encoding: .utf8)
            breakfastStuff = (string?.components(separatedBy: ","))!
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

