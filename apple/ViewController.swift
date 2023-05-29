//
//  ViewController.swift
//  apple
//
//  Created by 溫皓 on 2023/5/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var shapeSegmentControll: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = ""
        
        
        
        
    }
    
    @IBAction func shapeSegmentControll(_ sender: UISegmentedControl) {
        
    }
    @IBAction func changeApple(_ sender: UISlider) {
        var content = ""
        sender.value.round()
        let number = Int(sender.value)
        numberLabel.text = "\(number)"
       //正方形
        func square() {
            for _ in 1...number{
                for _ in 1...number{
                    content += "🍎"  // 在每一行中添加相應數量的 "🍎" 圖案
                }
                content += "\n"  // 在每一行的結尾換行
            }
            label.text = content  // 將正方形的內容設定為標籤(label)的文字內容，以在介面中顯示出來
        }

        //三角形
        func triangle(){
            for i in 1...number{
                for _ in 1...i{
                    content += "🍎"  // 在每一行中添加相應數量的 "🍎" 圖案
                }
                content += "\n"  // 在每一行的結尾換行
            }
            label.text = content  // 將三角形的內容設定為標籤(label)的文字內容，以在介面中顯示出來
        }

        //金字塔
        func pyramid(){
            for i in 1...number{
                
                for _ in i..<number {
                    content += "🥝"  // 在每一層金字塔的左側加上 "🥝" 圖案
                }
                
                for _ in 1...2*i-1{
                    content += "🍎"  // 在每一層金字塔的中央加上 "🍎" 圖案
                }
                content += "\n"  // 在每一層金字塔的結尾換行
            }
            label.text = content  // 將金字塔的內容顯示在標籤(label)上
        }

        
        func diamond() {
            var kiwiCount = number - 1 // 初始化 kiwiCount 變數，其值為 number 減去 1
            var appleCount = 1 // 初始化 appleCount 變數，其值為 1
            
            // 迴圈從 1 到 number*2-1
            for i in 1...number*2-1 {
                // 添加 kiwiCount 個🥝到 content 變數中
                for _ in 0..<kiwiCount {
                    content += "🥝"
                }
                
                // 添加 appleCount 個🍎到 content 變數中
                for _ in 1...appleCount {
                    content += "🍎"
                }
                
                // 如果 i 小於 number
                if i < number {
                    kiwiCount -= 1 // 減少 kiwiCount 的值
                    appleCount += 2 // 增加 appleCount 的值
                } else {
                    kiwiCount += 1 // 增加 kiwiCount 的值
                    appleCount -= 2 // 減少 appleCount 的值
                }
                
                content += "\n" // 添加換行符到 content 變數中
            }
            
            label.text = content // 將 content 的值設定為 label 的文字內容
        }
        
        if shapeSegmentControll.selectedSegmentIndex == 0 {
            square()
        }else if shapeSegmentControll.selectedSegmentIndex == 1 {
            triangle()
        }else if shapeSegmentControll.selectedSegmentIndex == 2 {
            pyramid()
        }else if shapeSegmentControll.selectedSegmentIndex == 3 {
            diamond()
        }
        }
    }

