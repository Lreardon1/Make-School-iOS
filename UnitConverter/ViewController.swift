//
//  ViewController.swift
//  UnitConverter
//
//  Created by Leith Reardon on 7/4/18.
//  Copyright © 2018 Leith Reardon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dollarAmountTextField: UITextField!
    @IBOutlet weak var currencySegmentedControl: UISegmentedControl!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var finalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        var exchangeRate = calcExchangeRate()
        
        let dollarAmount = Double(dollarAmountTextField.text)
        let finalAmount = dollarAmount * exchangeRate
        
        finalAmountLabel.text = String(finalAmount)
    }
    
    func calcExchangeRate() -> Double {
        switch currencySegmentedControl.selectedSegmentIndex{
        case 0:
            return 1.25
        case 1:
            return 1.37
        case 2:
            return 0.50
        default:
            return 0
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
}

