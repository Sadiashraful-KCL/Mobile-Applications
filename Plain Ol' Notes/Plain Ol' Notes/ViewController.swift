//
//  ViewController.swift
//  Plain Ol' Notes
//
//  Created by Sadi Ashraful on 11/03/2018.
//  Copyright © 2018 Sadi Ashraful. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
  
    @IBOutlet weak var table: UITableView!
    var data: [String] = ["Item 1", "Item 2", "Item 3"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = data[indexPath.row]
        return cell
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

