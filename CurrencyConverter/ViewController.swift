//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Leith Reardon on 7/4/18.
//  Copyright © 2018 Leith Reardon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: String = "0"
    let conversionRate = 0.86
    var decimalCheck: Bool = false
    
    @IBOutlet weak var startCurrencyImage: UIImageView!
    @IBOutlet weak var startCurrencyName: UILabel!
    @IBOutlet weak var currentPriceEntered: UILabel!
    
    @IBOutlet weak var endCurrencyImage: UIImageView!
    @IBOutlet weak var endCurrencyName: UILabel!
    @IBOutlet weak var endPrice: UILabel!
    
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var decimalButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func oneTapped(_ sender: UIButton) {
        updateCurrentValue(number: 1)
    }
    @IBAction func twoTapped(_ sender: UIButton) {
        updateCurrentValue(number: 2)
    }
    @IBAction func threeTapped(_ sender: UIButton) {
        updateCurrentValue(number: 3)
    }
    @IBAction func fourTapped(_ sender: UIButton) {
        updateCurrentValue(number: 4)
    }
    @IBAction func fiveTapped(_ sender: UIButton) {
        updateCurrentValue(number: 5)
    }
    @IBAction func sixTapped(_ sender: UIButton) {
        updateCurrentValue(number: 6)
    }
    @IBAction func sevenTapped(_ sender: UIButton) {
        updateCurrentValue(number: 7)
    }
    @IBAction func eightTapped(_ sender: UIButton) {
        updateCurrentValue(number: 8)
    }
    @IBAction func nineTapped(_ sender: UIButton) {
        updateCurrentValue(number: 9)
    }
    @IBAction func zeroTapped(_ sender: UIButton) {
        updateCurrentValue(number: 0)
    }
    @IBAction func decimalTapped(_ sender: UIButton) {
        addDecimal()
    }
    @IBAction func clearTapped(_ sender: UIButton) {
        clear()
    }
    
    func updateCurrentValue(number: Int) {
        if currentValue == "0"{
            currentValue = String(number)
            currentPriceEntered.text = currentValue
        } else {
            currentValue = currentValue + String(number)
            currentPriceEntered.text = currentValue
        }
        convertCurrency()
    }
    
    func clear() {
        currentValue = "0"
        currentPriceEntered.text = "0"
        endPrice.text = "0"
        decimalCheck = false
    }
    
    func addDecimal() {
        if decimalCheck {
            
        } else {
            decimalCheck = true
            currentValue = currentValue + "."
            currentPriceEntered.text = currentValue
        }
    }
    
    func convertCurrency(){
        let convertedValue = Double(currentValue)! * conversionRate
        endPrice.text = String(convertedValue)
    }
    
    func setUpViews() {
        oneButton.layer.borderWidth = 2
        oneButton.layer.borderColor = UIColor.white.cgColor
        twoButton.layer.borderWidth = 2
        twoButton.layer.borderColor = UIColor.white.cgColor
        threeButton.layer.borderWidth = 2
        threeButton.layer.borderColor = UIColor.white.cgColor
        fourButton.layer.borderWidth = 2
        fourButton.layer.borderColor = UIColor.white.cgColor
        fiveButton.layer.borderWidth = 2
        fiveButton.layer.borderColor = UIColor.white.cgColor
        sixButton.layer.borderWidth = 2
        sixButton.layer.borderColor = UIColor.white.cgColor
        sevenButton.layer.borderWidth = 2
        sevenButton.layer.borderColor = UIColor.white.cgColor
        eightButton.layer.borderWidth = 2
        eightButton.layer.borderColor = UIColor.white.cgColor
        nineButton.layer.borderWidth = 2
        nineButton.layer.borderColor = UIColor.white.cgColor
        decimalButton.layer.borderWidth = 2
        decimalButton.layer.borderColor = UIColor.white.cgColor
        zeroButton.layer.borderWidth = 2
        zeroButton.layer.borderColor = UIColor.white.cgColor
        clearButton.layer.borderWidth = 2
        clearButton.layer.borderColor = UIColor.white.cgColor
    }
    
}

