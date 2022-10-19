//
//  UIViewExt.swift
//  moloo
//
//  Created by Rafi Mochamad Fahreza on 19/10/22.
//

import Foundation
import UIKit

@IBDesignable extension UIView {
    
    @IBInspectable var radiusCorner: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var widthBorder: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var colorBorder: UIColor? {
        set {
            guard let newColor = newValue else {
                return
            }
            layer.borderColor = newColor.cgColor
        }
        
        get {
            guard let color = layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: color)
        }
    }
    
}
