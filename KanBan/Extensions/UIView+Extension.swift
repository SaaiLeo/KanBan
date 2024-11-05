//
//  UIView+Extension.swift
//  KanBan
//
//  Created by Sei Mouk on 1/11/24.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {return self.cornerRadius}
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
