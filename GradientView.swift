//
//  GradientView.swift
//  OnTheMap
//
//  Created by DANIEL DICKINSON on 12/1/22.
//

import UIKit
@IBDesignable //allow color views to be changed on the Interface Builder/Storyboard
class GradientView: UIView {
    //Two properties created to allow them to show on the Interface Builter to apply custom colors.
    @IBInspectable var FirstColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    @IBInspectable var SecondColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    //overriding layerClass to be CAGradientLayer
    override class var layerClass: AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
    //Function to allow both properties to update the view with the casted CAGradientLayer.
    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [FirstColor.cgColor, SecondColor.cgColor]
    }
}
