//
//  ViewController.swift
//  clickCounter
//
//  Created by Gonzalo Salazar Velasquez on 2/6/16.
//  Copyright © 2016 Gonzalo Salazar Velasquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Properties
    var count = 0
    var label1: UILabel!
    var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Label 1
        let label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"

        // label 2
        let label1 = UILabel()
        label1.frame = CGRectMake(150, 200, 60, 60)
        label1.text = "0"
        
        self.view.addSubview(label)
        self.view.addSubview(label1)
        
        self.label1 = label
        self.label2 = label1
        
        // Button increase.
        let button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("increase", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        self.view.addSubview(button)
        
        // Button decresase.
        let buttonDecrase = UIButton()
        buttonDecrase.frame = CGRectMake(150, 300, 90, 90)
        buttonDecrase.setTitle("de-crease", forState: .Normal)
        buttonDecrase.setTitleColor(UIColor.redColor(), forState: .Normal)
        
        self.view.addSubview(buttonDecrase)
        
        // Target.
        button.addTarget(self, action: "incrementCount", forControlEvents:
            UIControlEvents.TouchUpInside)
        
        buttonDecrase.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func randomColor() -> UIColor {
        let ramdomRed = CGFloat(drand48())
        let randomGreen = CGFloat(drand48())
        let randomBlue = CGFloat(drand48())
        return UIColor(red: ramdomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    

    func incrementCount() {
        self.count++
        self.label1.text = "\(self.count)";
        self.label2.text = "\(self.count)";
        self.view.backgroundColor = randomColor()
    }
    
    func decrementCount() {
        self.count--
        self.label1.text = "\(self.count)";
        self.label2.text = "\(self.count)";
        self.view.backgroundColor = randomColor()
    }
}

