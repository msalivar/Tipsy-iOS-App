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
    @IBOutlet weak var splitNumLbl: UILabel!
    @IBOutlet weak var splitAmountLbl: UILabel!
    
    // MARK: - @Properties
    
    var tipCalc = TipCalc(billAmount: 0, tipPercent: 0.15, splitNum: 2)
    
    // MARK: - Initialize Views
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    // MARK: - @IBActions
    
    @IBAction func billAmountChanged(sender: AnyObject)
    {
        tipCalc.billAmount = ((billAmountTF.text)! as NSString).doubleValue
        calcTip()
    }
    
    @IBAction func tipPercentChanged(sender: AnyObject)
    {
        let tipPercent = round(tipPercentSlider.value * 100) / 100
        tipPercentSlider.value = Float(tipPercent)
        tipPercentLbl.text = "TIP \(Int(tipPercent * 100))%"
        tipCalc.tipPercent = Double(tipPercent)
        calcTip()
    }
    
    @IBAction func splitNumChanged(sender: AnyObject)
    {
        let output = Int(splitNumSlider.value)
        splitNumSlider.value = Float(output)
        tipCalc.splitNum = output
        splitNumLbl.text = "SPLIT \(tipCalc.splitNum)"
        calcTip()
    }
    
    // MARK: - Functions
    
    func calcTip()
    {
        tipCalc.calculateTip()
        updateUI()
    }
    
    func updateUI()
    {
        tipAmountLbl.text = String(format: "$%0.2f", tipCalc.tipAmount)
        totalAmountLbl.text = String(format: "$%0.2f", tipCalc.totalAmount)
        splitAmountLbl.text = String(format: "$%0.2f", tipCalc.splitAmount)
    }
}






