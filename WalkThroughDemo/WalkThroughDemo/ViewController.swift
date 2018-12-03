//
//  ViewController.swift
//  WalkThroughDemo
//
//  Created by Sadi Ashraful on 19/03/2018.
//  Copyright © 2018 Sadi Ashraful. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BWWalkthroughViewControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showButtonPressed() {
        print("Someone pressed the Show Walkthrough Button")
        
        //Get view controllers and build the walkthrough
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let walkthrough = stb.instantiateViewController(withIdentifier: "walk0") as! BWWalkthroughViewController
        let page_one = stb.instantiateViewController(withIdentifier: "walk1") as UIViewController
        let page_two = stb.instantiateViewController(withIdentifier: "walk2") as UIViewController
        let page_three = stb.instantiateViewController(withIdentifier: "walk3") as UIViewController
        
        //Attach the pages to the master
        walkthrough.delegate = self
        walkthrough.add(viewController: page_one)
        walkthrough.add(viewController: page_two)
        walkthrough.add(viewController: page_three)
        
        self.present(walkthrough, animated: true, completion: nil)
        
    }


}

