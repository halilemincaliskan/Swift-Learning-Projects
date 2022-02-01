//
//  ViewController.swift
//  Calculator
//
//  Created by Halil on 1.02.2022.
//

import UIKit

class Calculator {
    func sum(firstValue : Int, secondValue : Int) -> Int{
        return firstValue + secondValue
    }
    func minus(firstValue : Int, secondValue : Int) -> Int{
        return firstValue - secondValue
    }
    func multiply(firstValue : Int, secondValue : Int) -> Int{
        return firstValue * secondValue
    }
    func divide(firstValue : Int, secondValue : Int) -> Int{
        return firstValue / secondValue
    }
}

class ViewController: UIViewController {
    
    var calculator = Calculator()

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var equalityLabel: UILabel!
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var equality: UILabel!
    @IBOutlet weak var numberInput1: UITextField!
    @IBOutlet weak var numberInput2: UITextField!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sumOperator(_ sender: Any) {
        if numberInput1.hasText && numberInput2.hasText {
            let equal = calculator.sum(firstValue: Int(numberInput1.text!)!, secondValue: Int(numberInput2.text!)!)
            equality.text = "\(equal)"
        } else {
            warningLabel.text = "Please input 2 value to these inputs"
        }
    }
    @IBAction func minusOperator(_ sender: Any) {
        if numberInput1.hasText && numberInput2.hasText {
            let equal = calculator.minus(firstValue: Int(numberInput1.text!)!, secondValue: Int(numberInput2.text!)!)
            equality.text = "\(equal)"
        } else {
            warningLabel.text = "Please input 2 value to these inputs"
        }
    }
    @IBAction func multiplyOperator(_ sender: Any) {
        if numberInput1.hasText && numberInput2.hasText {
            let equal = calculator.multiply(firstValue: Int(numberInput1.text!)!, secondValue: Int(numberInput2.text!)!)
            equality.text = "\(equal)"
        } else {
            warningLabel.text = "Please input 2 value to these inputs"
        }
    }
    @IBAction func DivideOperator(_ sender: Any) {
        if numberInput1.hasText && numberInput2.hasText {
            let equal = calculator.divide(firstValue: Int(numberInput1.text!)!, secondValue: Int(numberInput2.text!)!)
            equality.text = "\(equal)"
        } else {
            warningLabel.text = "Please input 2 value to these inputs"
        }
    }
    

}

