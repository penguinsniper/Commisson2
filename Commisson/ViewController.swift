//
//  ViewController.swift
//  Commisson
//
//  Created by Ryan Lau on 10/8/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalPayLabel: UILabel!
    @IBOutlet weak var commissionTextField: UITextField!
    let basepay:Int = 500
    override func viewDidLoad(){
        super.viewDidLoad()
        
    }

    @IBAction func calculateOnTapped(_ sender: Any)
   {
    let comPay = getInput()
    let totalPay = comPay + Double(basepay)
    let fromattedPay = String(format: "%.2f" , totalPay)
    totalPayLabel.text = "Total Pay = $\(totalPay)"
    }
    func getInput() -> Double
    {
        if let data = commissionTextField.text, let commissonPay = Double(data){
            return commissonPay
    } else {
            return 0
    
        }
    }

 }


