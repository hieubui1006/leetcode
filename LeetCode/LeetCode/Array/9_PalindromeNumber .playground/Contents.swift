import UIKit

class Solution {
    /*
     Example 1:
     Input: x = 121
     Output: true
     Explanation: 121 reads as 121 from left to right and from right to left.
     
     Example 2:
     Input: x = -121
     Output: false
     Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
     */
    
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        var array = [Int]()
        var temp: Int = x
        var palindDromeString = ""
        while temp >= 10 {
            let value: Int = temp % 10
            array.append(value)
            temp = temp / 10
        }
        array.append(temp)
        
        array.forEach { item in
            palindDromeString = "\(palindDromeString)\(item)"
        }
        return Int(palindDromeString) == x
    }
}

let sol = Solution().isPalindrome(12121)
