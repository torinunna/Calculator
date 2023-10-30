//
//  ViewController.swift
//  Calculator
//
//  Created by YUJIN KWON on 2023/10/28.
//

import UIKit

enum Operation {
    case Add
    case Subtract
    case Multiply
    case Divide
    case unknown
}

class ViewController: UIViewController {

    @IBOutlet var outputLabel: UILabel!
    
    var displayNumber = ""
    var firstOperand = ""
    var secondOperand = ""
    var result = ""
    var currentOperation: Operation = .unknown
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func numberBtnPressed(_ sender: UIButton) {
        guard let numberValue = sender.title(for: .normal) else { return }
        if self.displayNumber.count < 9 {
            self.displayNumber += numberValue
            self.outputLabel.text = self.displayNumber
        }
    }
    
    @IBAction func clearBtnPressed(_ sender: UIButton) {
        self.displayNumber = ""
        self.firstOperand = ""
        self.secondOperand = ""
        self.result = ""
        self.currentOperation = .unknown
        self.outputLabel.text = "0"
    }
    
    @IBAction func dotBtnPressed(_ sender: UIButton) {
        if self.displayNumber.count < 8, !self.displayNumber.contains(".") {
            self.displayNumber += self.displayNumber.isEmpty ? "0." : "."
            self.outputLabel.text = self.displayNumber
        }
    }
  
    @IBAction func divideBtnPressed(_ sender: UIButton) {
    }
    
    @IBAction func multiplyBtnPressed(_ sender: UIButton) {
    }
    
    @IBAction func addBtnPressed(_ sender: UIButton) {
    }
    
    @IBAction func subtractBtnPressed(_ sender: UIButton) {
    }
    
    @IBAction func equalBtnPressed(_ sender: UIButton) {
    }
}

