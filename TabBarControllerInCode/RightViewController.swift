//
//  RightViewController.swift
//  TabBarControllerInCode
//
//  Created by Mounika Ankam on 2/4/15.
//  Copyright (c) 2015 Mounika Ankam. All rights reserved.
//

import UIKit

class RightViewController: UIViewController {

    // Called when a ViewController is read in from a Storyboard
    // We need this, because viewDidLoad() is *too* late in the
    // process to set the tabBarItem properties
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.tabBarItem.title = "Right"
        self.tabBarItem.image = UIImage(named:"snow.jpg")
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem.title = "Right"
        self.tabBarItem.image = UIImage(named:"snow.jpg")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
