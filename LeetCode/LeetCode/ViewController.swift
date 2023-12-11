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
//        maxAscendingSum([100,10,1])
        let isP = isPalindrome(121)
        // Do any additional setup after loading the view.
    }
    
    func isPalindrome(_ x: Int) -> Bool {
        return x < 0 || (x % 10 == 0 && x != 0) ? false : method(x: x) == x
    }
    private func method(x: Int) -> Int {
        var r = 0
        var x = x
        while x != 0 {
            r = r * 10
            r = r + x % 10
            x /= 10
        }
        return (r < Int32.min || r > Int32.max) ? 0 : r
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

