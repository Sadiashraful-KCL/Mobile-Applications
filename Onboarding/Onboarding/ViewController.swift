//
//  ViewController.swift
//  Onboarding
//
//  Created by Sadi Ashraful on 20/03/2018.
//  Copyright © 2018 Sadi Ashraful. All rights reserved.
//

import UIKit
import PaperOnboarding

extension UIColor {
    convenience init(hexString: String, alpha: CGFloat = 1.0) {
        let hexString: String = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        if (hexString.hasPrefix("#")) {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    func toHexString() -> String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        getRed(&r, green: &g, blue: &b, alpha: &a)
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        return String(format:"#%06x", rgb)
    }
}

class ViewController: UIViewController, PaperOnboardingDataSource {
    
    

    @IBOutlet weak var onboardingView: OnboardingView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onboardingView.dataSource = self
    }
    
    func onboardingItemsCount() -> Int {
        return 6
    }
    
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        
        return [
            OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "spider-byte-red") ,
                               title: "Welcome to SpiderByte!",
                               description: "Please take a few minutes to learn about the features of the app",
                               pageIcon: #imageLiteral(resourceName: "active"),
                               color: UIColor(hexString: "f64c73"),
                               titleColor: UIColor.white,
                               descriptionColor: UIColor.white,
                               titleFont: UIFont.init(name: "AvenirNext-Bold", size: 24)!,
                               descriptionFont: UIFont.init(name: "AvenirNext-Regular", size: 18)!),
            
            OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "slide_gesture"),
                               title: "Navigate around the application",
                               description: "Swipe to switch between Announcements, Events and Personal Information",
                               pageIcon: #imageLiteral(resourceName: "active"),
                               color: UIColor(hexString: "20d2bb"),
                               titleColor: UIColor.white,
                               descriptionColor: UIColor.white,
                               titleFont: UIFont.init(name: "AvenirNext-Bold", size: 24)!,
                               descriptionFont: UIFont.init(name: "AvenirNext-Regular", size: 18)!),
            
            OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "lock"),
                               title: "Login with your K-number",
                               description: "You can log in with your existing email, using k-number@kcl.ac.uk",
                               pageIcon: #imageLiteral(resourceName: "active"),
                               color: UIColor(hexString: "#3395ff"),
                               titleColor: UIColor.white,
                               descriptionColor: UIColor.white,
                               titleFont: UIFont.init(name: "AvenirNext-Bold", size: 24)!,
                               descriptionFont: UIFont.init(name: "AvenirNext-Regular", size: 18)!),
            
            OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "bullhorn"),
                               title: "Announcements",
                               description: "You can click on each announcement to see more detail",
                               pageIcon: #imageLiteral(resourceName: "active"),
                               color: UIColor(hexString: "#c873f4"),
                               titleColor: UIColor.white,
                               descriptionColor: UIColor.white,
                               titleFont: UIFont.init(name: "AvenirNext-Bold", size: 24)!,
                               descriptionFont: UIFont.init(name: "AvenirNext-Regular", size: 18)!),
            
            OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "calendar"),
                               title: "Calendar",
                               description: "You can click on dates to see more details about events on that day",
                               pageIcon: #imageLiteral(resourceName: "active"),
                               color: UIColor(hexString: "f64c73"),
                               titleColor: UIColor.white,
                               descriptionColor: UIColor.white,
                               titleFont: UIFont.init(name: "AvenirNext-Bold", size: 24)!,
                               descriptionFont: UIFont.init(name: "AvenirNext-Regular", size: 18)!),
            
            OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "settings"),
                               title: "Settings",
                               description: "You can click on settings tab to see personal information and application details",
                               pageIcon: #imageLiteral(resourceName: "active"),
                               color: UIColor(hexString: "20d2bb"),
                               titleColor: UIColor.white,
                               descriptionColor: UIColor.white,
                               titleFont: UIFont.init(name: "AvenirNext-Bold", size: 24)!,
                               descriptionFont: UIFont.init(name: "AvenirNext-Regular", size: 18)!)
            ][index]
    }
    
    
    //    func onboardingConfigurationItem(_: OnboardingContentViewItem, index _: Int) {
    //        <#code#>
    //    }
    
//    func onboardingWillTransitonToIndex(_ index: Int) {
//        if index == 1 {
//            if self.getStartedButton.alpha == 1 {
//                UIView.animate(withDuration: 0.2, animations: {
//                    self.getStartedButton.alpha = 0
//                })
//            }
//
//        }
//    }
    
//    func onboardingDidTransitonToIndex(_ index: Int) {
//        if index == 5 {
//            UIView.animate(withDuration: 0.4, animations: {
//                self.getStartedButton.alpha = 1
//            })
//        }
//    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

