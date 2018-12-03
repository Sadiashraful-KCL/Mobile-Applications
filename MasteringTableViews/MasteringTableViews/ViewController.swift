//
//  ViewController.swift
//  MasteringTableViews
//
//  Created by Sadi Ashraful on 10/03/2018.
//  Copyright © 2018 Sadi Ashraful. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    let data:[String] = ["Name", "Email Address", "Item 3"]
    let subs:[String] = ["Mohammad Ashraful Islam Sadi", "k1631026@kcl.ac.uk", "sub 3"]
    let colours:[UIColor] = [.red, .green, .blue]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return data.count
//    }
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return titles[section]
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        cell.detailTextLabel?.text = subs[indexPath.row]
        cell.imageView?.image = UIImage(named: "bull-horn-announcer")?.withRenderingMode(.alwaysTemplate)
        cell.imageView?.tintColor = colours[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


