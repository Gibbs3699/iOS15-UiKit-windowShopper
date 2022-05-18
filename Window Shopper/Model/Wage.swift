//
//  Wage.swift
//  Window Shopper
//
//  Created by TheGIZzz on 18/5/2565 BE.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
