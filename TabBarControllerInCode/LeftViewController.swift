//
//  LeftViewController.swift
//  TabBarControllerInCode
//
//  Created by Mounika Ankam on 2/4/15.
//  Copyright (c) 2015 Mounika Ankam. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController, UITextFieldDelegate {

    var sharedInfo:SharedInfo!
    
    override func loadView(){
        var view:UIView = UIView()  // first make a view
        
        view.backgroundColor = UIColor.whiteColor() // set its color
        
        var mainLBL:UILabel = UILabel()             // make and configure a label
        mainLBL.text = "I am centered"
        mainLBL.font = UIFont(name: "Helvetica", size: 24)
        mainLBL.setTranslatesAutoresizingMaskIntoConstraints(false)

        view.addSubview(mainLBL)                    // add it to the view
        
        var onTheSideLBL:UILabel = UILabel()             // make and configure a label
        onTheSideLBL.text = "I am on the side"
        onTheSideLBL.font = UIFont(name: "Helvetica", size: 16)
        onTheSideLBL.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        view.addSubview(onTheSideLBL)                    // add it to the view
        
        var clickMeBTN:UIButton = UIButton.buttonWithType(UIButtonType.System) as UIButton // downcasting
        clickMeBTN.setTitle("Click Me For Fun & Profit", forState: UIControlState.Normal)
        clickMeBTN.addTarget(self, action: Selector(""), forControlEvents: UIControlEvents.TouchUpInside)
        clickMeBTN.setTranslatesAutoresizingMaskIntoConstraints(false) // omit this and nothing works!!
        view.addSubview(clickMeBTN)
        
        var nameTF:UITextField = UITextField()
        nameTF.borderStyle = UITextBorderStyle.RoundedRect
        nameTF.setTranslatesAutoresizingMaskIntoConstraints(false)

        nameTF.delegate = self
        view.addSubview(nameTF)
        
        view.addConstraint(NSLayoutConstraint(item: mainLBL, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 50.0))
        
        view.addConstraint(NSLayoutConstraint(item: mainLBL, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0.0))
        
        view.addConstraint(NSLayoutConstraint(item: onTheSideLBL, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 100.0))
        
        view.addConstraint(NSLayoutConstraint(item: onTheSideLBL, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 30.0))
        
        view.addConstraint(NSLayoutConstraint(item: clickMeBTN, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: mainLBL, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 120.0))
        
        view.addConstraint(NSLayoutConstraint(item: clickMeBTN, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0.0))
        
        view.addConstraint(NSLayoutConstraint(item: nameTF, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 150.0))
        
        view.addConstraint(NSLayoutConstraint(item: nameTF, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 30.0))
        
        view.addConstraint(NSLayoutConstraint(item: nameTF, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Width, multiplier: 0.0, constant: 120.0)) // being sneaky here, there's a better way
 
        
        self.view = view       // lastly assign it to the UIViewController's property
    }

       
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem.title = "Left"
        self.tabBarItem.image = UIImage(named:"rain.jpg")
        
        var appy:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        self.sharedInfo = appy.sharedInfo
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

}
