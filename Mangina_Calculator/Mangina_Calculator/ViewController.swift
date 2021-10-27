//
//  ViewController.swift
//  Mangina_Calculator
//
//  Created by JayaShankar Mangina on 9/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outputDisplay: UILabel!
    
    var numberOnDisplay = ""
    var leftOperand = ""
    var rightOperand  = ""
    var result = ""
    var currentOperation:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        outputDisplay.text = "0"
        }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        if numberOnDisplay.count <= 8 {
            numberOnDisplay += "\(sender.tag)"
            outputDisplay.text = numberOnDisplay
        }
    }
    
    @IBAction func dotPressed(_ sender: UIButton) {
        if numberOnDisplay.contains(".") {
            
        }else{
            if numberOnDisplay.count <= 7 {
                numberOnDisplay += "."
                outputDisplay.text = numberOnDisplay
                
            }
            
        }
        
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        performOperation(operator: "+")
    }
    
    @IBAction func subButtonPressed(_ sender: UIButton) {
        performOperation(operator: "-")
    }
    
    @IBAction func mulButtonPressed(_ sender: UIButton) {
        performOperation(operator: "*")
    }
    
    @IBAction func divButtonPressed(_ sender: UIButton) {
        performOperation(operator: "/")
    }
    
    @IBAction func signChangeButtonPressed(_ sender: UIButton) {
        if (numberOnDisplay != "") {
            numberOnDisplay = "-" + numberOnDisplay
        }
        outputDisplay.text = numberOnDisplay
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        numberOnDisplay = ""
        outputDisplay.text = numberOnDisplay
    }
    
    @IBAction func AllClearButtonPressed(_ sender: UIButton) {
        numberOnDisplay = ""
        leftOperand = ""
        rightOperand  = ""
        result = ""
        currentOperation = ""
        outputDisplay.text = "0"
    }
    
    @IBAction func sqrtButtonPressed(_ sender: UIButton) {
        numberOnDisplay = "\(pow(Double(numberOnDisplay)!, 0.5))"
        outputDisplay.text = outputFormat(numberOnDisplay)
    }
    
    @IBAction func equalsButtonPressed(_ sender: UIButton) {
       performOperation(operator: currentOperation)
    }
    
    func outputFormat(_ incomingResult:String) -> String {
        let inResult = Double(incomingResult)!
        var outResultStr = String(round(inResult * 100000) / 100000.0)
        if outResultStr.contains(".0") {
            outResultStr.removeSubrange(outResultStr.index(outResultStr.endIndex, offsetBy: -2)..<outResultStr.endIndex)
        }
        return outResultStr
    }
    
    func performOperation(operator: String){
        if currentOperation != "" {
            if numberOnDisplay != "" {
                rightOperand = numberOnDisplay
                numberOnDisplay = ""
                
                switch currentOperation{
                case "+":
                    let sum = "\(Double(leftOperand)! + Double(rightOperand)!)"
                    result = outputFormat(sum)
                    //result = "\(Double(leftOperand)! + Double(rightOperand)!)"
                case "-":
                    let sub = "\(Double(leftOperand)! - Double(rightOperand)!)"
                    result = outputFormat(sub)
                case "*":
                    let mult = "\(Double(leftOperand)! * Double(rightOperand)!)"
                    result = outputFormat(mult)
                case "/":
                    if Int(rightOperand)! == 0 || Double(rightOperand)! == 0.0 {
                        result = "Error"
                    }else{
                        let div = "\(Double(leftOperand)! / Double(rightOperand)!)"
                        result = outputFormat(div)
                    }
                default:
                    result = ""
                }
                leftOperand = result
                outputDisplay.text = result
            }
            currentOperation = `operator`
            
        }else{
            leftOperand = numberOnDisplay
            numberOnDisplay = ""
            currentOperation = `operator`
        }
    }
    
    }

    
    
    


