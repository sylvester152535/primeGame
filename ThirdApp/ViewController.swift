//
//  ViewController.swift
//  ThirdApp
//
//  Created by Sylvester Amponsah on 9/10/18.
//  Copyright © 2018 Sylvester Amponsah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var inputText: UITextField!
    
    //This function determines if a given int input is prime
    func prime(prime: Int)->Bool{
        var ret = true
        var i = 2
        if prime == 1 {
            ret = false
        } else {
            while i < prime {
                if prime%i == 0{
                    ret = false
                }
                i+=1
            }
        }
        return ret
    }
    
    // This is the button the user presses to determine if the input is prime or not ... This button takes the text input, converts it to int and pass it on to the prime function..If the output of the prime function is true then (input int) is prime is displayed to the user else other messages are displyaed 
    @IBAction func primeButton(_ sender: Any) {
        if let  textToInt = Int(inputText.text!) {
            if prime(prime: textToInt)==true{
                label.text = "\(textToInt) is prime."
            }else{
                label.text = "\(textToInt) is not a prime number."            }
        } else {
            label.text = "Please enter a positive whole number"            }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
}

