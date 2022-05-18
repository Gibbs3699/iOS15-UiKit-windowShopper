//
//  CurrencyTextField.swift
//  Window Shopper
//
//  Created by TheGIZzz on 18/5/2565 BE.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 10, y: (frame.size.height/2) - size/2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}
