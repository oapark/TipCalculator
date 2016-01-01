//
//  SettingsViewController.swift
//  tips
//
//  Created by Oaggin Park on 12/31/15.
//  Copyright © 2015 Oaggin Park. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var tipsEditField: UITextField!
    @IBOutlet weak var tipSelectionControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipsEditField.becomeFirstResponder()
        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTipsEditingChanged(sender: AnyObject) {
        //TESTING
        var tipSelectedIndex = tipSelectionControl.selectedSegmentIndex;
        var defaultTipPercentages = [0.18, 0.2, 0.22]
        var defaultTipPercentage = defaultTipPercentages[tipSelectionControl.selectedSegmentIndex]
        
        //on tipSelectionControl UISegmentedControl value change, update previously selected defaultTip and update the UITextField tipsEditField to newly defaultTipPercentage
        //on tipSelectionControl UISegmentedControl value change, update previously selected defaultTip label
        var newTipPercentage = NSString(string: tipsEditField.text!).doubleValue
        //steps
        //select segment: triggers selected index to show in the textfield
        
        
        print("Updating tip defaults: \(defaultTipPercentage)")
        print("test")
        
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
