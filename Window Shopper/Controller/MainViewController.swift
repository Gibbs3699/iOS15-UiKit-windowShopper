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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcBtn.addTarget(self, action: #selector(calculator), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calcBtn
        priceTextField.inputAccessoryView = calcBtn
    }

    @objc func calculator() {
        
    }

}

