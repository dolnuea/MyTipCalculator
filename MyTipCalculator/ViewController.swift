//
//  ViewController.swift
//  MyTipCalculator
//
//  Created by dolu on 8/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillAmountTextField: UITextField!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var TotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the initial bill amount and calculate the tips.
        let bill = Double(BillAmountTextField.text!) ?? 0
        
        let tipPercetages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercetages[TipControl.selectedSegmentIndex]

        // Calculate the total cost.
        let total = bill + tip

        // Update the tip and total labels.
        TipAmountLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
    }
}

