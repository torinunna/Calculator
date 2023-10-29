//
//  RoundButton.swift
//  Calculator
//
//  Created by YUJIN KWON on 2023/10/29.
//

import UIKit

class RoundButton: UIButton {
    @IBInspectable var isRound: Bool = false {
        didSet {
            if isRound {
                self.layer.cornerRadius = self.frame.height / 2
            }
        }
    }
}
