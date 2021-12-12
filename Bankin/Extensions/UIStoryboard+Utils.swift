//
//  UIStoryboard+Utils.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import UIKit

extension UIStoryboard {
    enum Storyboard: String {
        case banksList

        var filename: String {
            return rawValue.firstUppercased
        }
    }
    
    class func storyboard(storyboard: Storyboard, bundle: Bundle? = nil) -> UIStoryboard {
        return UIStoryboard(name: storyboard.filename, bundle: bundle)
    }
}
