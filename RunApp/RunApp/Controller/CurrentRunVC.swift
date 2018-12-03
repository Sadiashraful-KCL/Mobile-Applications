//
//  CurrentRunVC.swift
//  RunApp
//
//  Created by Sadi Ashraful on 12/11/2018.
//  Copyright © 2018 Sadi Ashraful. All rights reserved.
//

import UIKit

class CurrentRunVC: UIViewController {
    @IBOutlet weak var swipeBackgroundImageView: UIImageView!
    @IBOutlet weak var sliderImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let swipeGesture = UIPanGestureRecognizer(target: self, action: #selector(endRunSwiped(sender:)))
        sliderImageView.addGestureRecognizer(swipeGesture)
        sliderImageView.isUserInteractionEnabled = true
        swipeGesture.delegate = self as? UIGestureRecognizerDelegate
    }
    
    @objc func endRunSwiped(sender: UIGestureRecognizer){
        let minAdjust: CGFloat = 80
        let maxAdjust: CGFloat = 130
        if let sliderView = sender.view {
            if sender.state == UIGestureRecognizer.State.began || sender.state == UIGestureRecognizer.State.changed{
                let translation = sender.translation(in: self.view)
                if sliderView.center.x >= (swipeBackgroundImageView.center.x - minAdjust) && sliderView.center.x <=
                    (swipeBackgroundImageView.center.x + maxAdjust) {
                    sliderView.center = CGPoint(x: sliderView.center.x + translation.x, y: sliderView.center.y)
                }
                sender.setTranslation(CGPoint.zero, in: self.view)
            }
        }
    }
    

    

}
