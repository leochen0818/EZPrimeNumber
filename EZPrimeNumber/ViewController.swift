//
//  ViewController.swift
//  EZPrimeNumber
//
//  Created by Leo on 2017/2/3.
//  Copyright © 2017年 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Push the keyboard up
        inputTextField.becomeFirstResponder()
    }
    
    @IBAction func doThePrimeTest(_ sender: UIButton) {
        
        var inputNumber:Int = 0
        
        // Take out number string form text field
        let inputStr:String = inputTextField.text!
        
        // Cover number string to int
        if let number:Int = Int(inputStr) {
            inputNumber = number
        }
        
        // Using check prime get result
        let resultStr:String = checkPrime(inputNumber)
        
        // Using result label show result
        resultLabel.text = resultStr
        
        if resultLabel.isHidden {
            resultLabel.isHidden = false
        }
        
        inputTextField.text = ""
        inputTextField.becomeFirstResponder()
    }
    
    func checkPrime(_ number:Int) -> String {
        // 1: is prime; 2: is not prime; 0: reenter
        var primeStatus:Int = 1
        
        if number <= 0 {
            primeStatus = 0;
        }
        else if number == 1 {
            primeStatus = 2;
        }
        else {
            for i in 2 ..< number {
                if number % i == 0 {
                    // input number is not prime
                    primeStatus = 2;
                    break;
                }
            }
        }
        
        switch primeStatus {
        case 1:
            return "\(number) is prime."
        case 2:
            return "\(number) is not prime."
        default:
            return "Please enter a number greater than 0."
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

