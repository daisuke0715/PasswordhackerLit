//
//  ViewController.swift
//  PasswordHacker
//
//  Created by 河村大介 on 2021/08/18.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel1: UILabel!
    @IBOutlet weak var resultLabel2: UILabel!
    @IBOutlet weak var resultLabel3: UILabel!
    @IBOutlet weak var resultLabel4: UILabel!
    
    @IBOutlet weak var countLabel: UILabel!
    
    var password: Int = 1234
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func start() {
        for i in 0...9999 {
            print(i)
            countLabel.text = String(i)
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            if i == password {
                countLabel.text = "パスワードは、\(i)です！"
                
                var digits:[Int] = [Int]()
                for _ in 0...3 {
                    digits.append(password % 10)
                    password = password / 10
                }
                
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
                
                return
            }
        }
    }

    @IBAction func reset() {
        password = 1234
        countLabel.text = "「START」ボタンを押して解析開始"
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
    }
}

