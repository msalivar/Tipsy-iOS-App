//
//  TipCalc.swift
//  Tipsy iOS App
//
//  Created by Programmer on 8/3/16.
//  Copyright © 2016 Programmer. All rights reserved.
//

import Foundation


class TipCalc
{
    private var _billAmount = 0.0
    private var _tipPercent = 0.0
    private var _tipAmount = 0.0
    private var _totalAmount = 0.0
    private var _splitNum = 0
    private var _splitAmount = 0.0
    
    var billAmount: Double
    {
        get
        {
            return _billAmount
        }
        set
        {
            _billAmount = newValue
        }
    }
    var tipPercent: Double
    {
        get
        {
            return _tipPercent
        }
        set
        {
            _tipPercent = newValue
        }
    }
    var tipAmount: Double
    {
        return _tipAmount
    }
    var totalAmount: Double
    {
        return _totalAmount
    }
    var splitNum: Int
    {
        get
        {
            return _splitNum
        }
        set
        {
            _splitNum = newValue
        }
    }
    var splitAmount: Double
    {
        return _splitAmount
    }
    
    init(billAmount: Double, tipPercent: Double, splitNum: Int)
    {
        self._billAmount = billAmount
        self._tipPercent = tipPercent
        self._splitNum = splitNum
    }
    
    func calculateTip()
    {
        _tipAmount = _billAmount * _tipPercent
        _totalAmount = _billAmount + _tipAmount
        _splitAmount = _totalAmount / Double(_splitNum)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}