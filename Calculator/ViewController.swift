//
//  ViewController.swift
//  Calculator
//
//  Created by Kelvin Zhang on 4/23/17.
//  Copyright © 2017 Kelvin Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    //        // Do any additional setup after loading the view, typically from a nib.
    //    }
    //
    //    override func didReceiveMemoryWarning() {
    //        super.didReceiveMemoryWarning()
    //        // Dispose of any resources that can be recreated.
    //    }
    
    var userIsTyping = false;
    var displayValue: Double {
        get{
            return Double(display.text!)!;
        }
        set{
            display.text = String(newValue);
        }
    }
    
    @IBAction func touchDigit(_ sender: UIButton)
    {
        let digit = sender.currentTitle!;
        let textCurrentlyInDisplay = display.text!;
        
        if !userIsTyping
        {
            display.text = digit;
            userIsTyping = true;
        }else
        {
            display!.text = textCurrentlyInDisplay + digit;
        }
        
        
    }
    @IBAction func performOperation(_ sender: UIButton)
    {
        userIsTyping = false;
        if let mathSymbol = sender.currentTitle
        {
            switch mathSymbol
            {
            case "π":
                displayValue = Double.pi;
            case "√":
                displayValue = sqrt(displayValue);
            default:
                break;
            }
        }
    }
    
    @IBOutlet weak var display: UILabel!
    
}

