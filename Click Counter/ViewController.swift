//
//  ViewController.swift
//  Click Counter
//
//  Created by atao1 on 11/24/17.
//  Copyright © 2017 udacity. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label
        var label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        self.view.addSubview(label)
        
        self.label = label
        
        //Button
        var button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Increment", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        var button1 = UIButton()
        button1.frame = CGRect.init(x: 150, y: 350, width: 60, height: 60)
        button1.setTitle("Decrement", for: .normal)
        button1.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button1)
        
        button1.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
    }
    
    @objc func incrementCount(){
        changeBackground()
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @objc func decrementCount(){
        changeBackground()
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
    //Displays random color background
    func changeBackground(){
        let red = randFloat()
        let green = randFloat()
        let blue = randFloat()
        self.view.backgroundColor = UIColor.init(red: red, green: green, blue: blue, alpha: 1)
      
    }
    
    

}
//Generates Random CGfloat number 0.0 - 1.0
func randFloat() -> CGFloat{
    
    return CGFloat(arc4random()) / CGFloat(UInt32.max)
}
