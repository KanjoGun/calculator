//
//  ViewController.swift
//  ThirdProject
//
//  Created by KanjoGun on 21.01.2021.
//  Copyright © 2021 KanjoGun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //@IBOutlet var holder: UIView!
    
    @IBOutlet weak var calculatorLabel: UILabel!
    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var operatorTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    @IBAction func magicButton(_ sender: Any) {
    }
    
    var firstNumber = 0
    var resultNumber = 0
    var currentOperations: Operation?
    enum Operation {
        case add, subtract, multiply, divide
    }
                
    switch Operation {
    case .add:
    
    firstNumber = firstNumber + secondNumber
    secondNumber = 0
    calculatorLabel.text = "\(firstNumber)"
    currentOperations = nil
    firstNumber = 0
    
    break
    
    case .subtract:
    firstNumber = firstNumber - secondNumber
    secondNumber = 0
    calculatorLabel.text = "\(firstNumber)"
    currentOperations = nil
    firstNumber = 0
    
    break
    
    case .multiply:
    firstNumber = firstNumber * secondNumber
    secondNumber = 0
    calculatorLabel.text = "\(firstNumber)"
    currentOperations = nil
    firstNumber = 0
    
    break
    
    case .divide:
    firstNumber = firstNumber / secondNumber
    secondNumber = 0
    calculatorLabel.text = "\(firstNumber)"
    currentOperations = nil
    firstNumber = 0
    break
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
//    class Calculator{
//        let x: Double
//        let y: Double
//        init(){
//            x = 10
//            y = 12
//        }
//        func sum() -> Double {
//            return x + y
//        }
//        func subtract() -> Double {
//            return x - y
//        }
//        func multiply() -> Double {
//            return x * y
//        }
//        func divide() -> Double {
//            return x / y
//        }
//    }
//    let calculatorOne = Calculator()
//    calculatorOne.sum()? //() - это указание функции выполниться (если нет параметров входных)
//
//    func operation(_ a: Double, _ b: Double, _ action: (Double, Double) -> Double) -> Double{
//        return action(a, b)
//    }
//    let x = 12.4
//    let y = 4.2
//    class Calculator {
//        let sum = operation(x, y, {$0 + $1})
//        let subtract = operation(x, y, {$0 - $1})
//        let multiply = operation(x, y, {$0 * $1})
//        let divide = operation(x, y, {$0 / $1})
//    }
//
//}

//c. Для этой задачи сделайте три текстовых поля. По сути, это аналог калькулятора :) В первое поле вводится целое число, во второе — оператор (минус, плюс, умножить, делить), в третье поле — второе число. При нажатии на кнопку операция из второго поля применяется к числу из первого и третьего поля. Если где-то введены некорректные данные, в лейбл должно вывестись «Некорректные данные».
