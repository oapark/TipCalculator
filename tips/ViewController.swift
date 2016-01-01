//
//  ViewController.swift
//  tips
//
//  Created by Oaggin Park on 12/31/15.
//  Copyright © 2015 Oaggin Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Default text labels
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        //Sets title in Navigation Bar
        self.title = "Tip Calculator"
        billField.becomeFirstResponder()
        
        
//        //saving keys to NSUserDefaults
//        let defaults = NSUserDefaults.standardUserDefaults()
//        defaults.setDouble(0.2, forKey: "default_tip_percentage")
//        defaults.synchronize()
        
    }
    
    //View *Appear()
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("View will appear")
        // This is a good place to retrieve the default tip percentage from NSUserDefaults
        // and use it to update the tip amount
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("View did appear")
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("View will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        //triggered by editing billLabel
        //indicates method accessed
        print("User Edited bill")
        
        //apply selected tip percentage
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        //should update tipLabel and totalLabel
        //capture billLabel text into billAmount variable
        var billAmount = NSString(string: billField.text!).doubleValue
        
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        //Update String format using Obj-C to decimal float with 2 decimal places
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }

    

}

