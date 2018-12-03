//
//  WeatherTableViewController.swift
//  WeatherApplication
//
//  Created by Sadi Ashraful on 14/08/2018.
//  Copyright © 2018 Sadi Ashraful. All rights reserved.
//

import UIKit

class WeatherTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath)

        // Configure the cell...

        return cell
    }
    


}
