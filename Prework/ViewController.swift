//
//  ViewController.swift
//  Prework
//
//  Created by Peter Huynh on 8/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get bill from UI
        let bill = Double(billAmountTextField.text!) ?? 0
    
        //Get tip percent and calculate tip amount and total
        let tipPercents = [0.15, 0.18, 0.2]
        let tipAmount = bill * tipPercents[tipControl.selectedSegmentIndex]
        
        let total = bill + tipAmount
        
        //Update UI
        tipAmountLabel.text = String(format: "$%.2f", tipAmount)
        
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

