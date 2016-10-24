//
//  ViewController.swift
//  nabeatsu
//
//  Created by ohtatomotaka on 2015/03/11.
//  Copyright (c) 2015年 ohtatomotaka. All rights reserved.
//

import UIKit
//TODO:コーディング規約を確認

class ViewController: UIViewController {
    var number:Int = 0
    @IBOutlet var label:UILabel!
    @IBOutlet var faceLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "\(0)"
    }
    
    func isAho() ->Bool{
        //問題1
        if number % 3 == 0{
            return true
        }
        
        //問題2
        if number % 10 == 3{
            return true//アホになる
        }
        
        
        //問題3
//        if number / 10 % 10 == 3 {
//            return true//アホになる
//        }
        
        //問題4
        var checkNum : Int
        checkNum = number
        while checkNum != 0 {
            if checkNum % 10 == 3 {
                return true//アホになる
            }else {
                checkNum = checkNum / 10
            }
        }

    
        return false
    }
    @IBAction func plusButton(){
        number = number + 1
        label.text = "\(number)"
        if isAho() == true {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            faceLabel.text = "(゜o゜)"
        }
    }
    @IBAction func clear(){
        number = 0
        label.text = String(number)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}



/*
Q1
if number % 3 == 0{
return true
}

Q2
if number % 10 == 3{
return true
}

Q3
if number / 10 % 10 == 3 {//10で割った後、10で割った余りを出す
return true
}

Q4
while number != 0 {
if number % 10 == 3 {
return true
}else {
number = number / 10
}
}


*/