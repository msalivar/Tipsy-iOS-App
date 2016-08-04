//
//  ViewController.swift
//  Tipsy iOS App
//
//  Created by Programmer on 8/1/16.
//  Copyright © 2016 Programmer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - @IBOutlets
    
    @IBOutlet weak var tipsyTitleView: UIView!
    @IBOutlet weak var tipsyTitleLbl: UILabel!
    @IBOutlet weak var billAmountTF: UITextField!
    @IBOutlet weak var tipPercentLbl: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var totalAmountLbl: UILabel!
    @IBOutlet weak var splitNumSlider: UISlider!
    @IBOutlet weak var splitAmountLbl: UILabel!
    
    // MARK: - @Properties
    
    var tipCalc = TipCalc(billAmount: 0, tipPercent: 0.15)
    
    // MARK: - Initialize Views
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    // MARK: - @IBActions
    
    @IBAction func billAmountChanged(sender: AnyObject)
    {
        calcTip()
    }
    
    @IBAction func tipPercentChanged(sender: AnyObject)
    {
        tipPercentLbl.text = "TIP \(Int(tipPercentSlider.value * 100))%"
    }
    
    
    // MARK: - Functions
    
    func calcTip()
    {
        tipCalc.tipPercent = Double(tipPercentSlider.value)
        tipCalc.billAmount = ((billAmountTF.text)! as NSString).doubleValue
        tipCalc.calculateTip()
    }
    
    func updateUI()
    {
        tipAmountLbl.text = String(format: "$%0.2f", tipCalc.totalAmount)
        totalamountlbl.text = String(format: "$%0.2f", tipCalc.totalAmount)
    }
}

