//
//  ViewController.swift
//  LeetCode
//
//  Created by mrhb on 08/12/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        maxAscendingSum([100,10,1])
        // Do any additional setup after loading the view.
    }
    
    func maxAscendingSum(_ nums: [Int]) -> Int {
        var value = 0
        var datas = [Int]()
        for item in nums {
            if value < item {
                value = item
                datas.append(value)
            } else {
                datas = [item]
                value = item
            }
        }
        
        value = 0
        for item in datas {
            value += item
        }
        return value
    }
    
}

