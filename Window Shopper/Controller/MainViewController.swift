//
//  MainViewController.swift
//  Window Shopper
//
//  Created by TheGIZzz on 18/5/2565 BE.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wageTextField: CurrencyTextField!
    @IBOutlet weak var priceTextField: CurrencyTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 80))
        
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcBtn.addTarget(self, action: #selector(calculator), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calcBtn
        priceTextField.inputAccessoryView = calcBtn
        
        resultLabel.isHidden = true
        hourLabel.isHidden = true
    }

    @objc func calculator() {
        if let wageText = wageTextField.text, let priceText = priceTextField.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hourLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hourLabel.isHidden = true
        wageTextField.text = ""
        priceTextField.text = ""
    }
}

