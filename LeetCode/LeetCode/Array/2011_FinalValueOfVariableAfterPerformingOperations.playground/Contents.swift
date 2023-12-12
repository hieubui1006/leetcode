import UIKit

class Solution {
    /*
    Example 1:
    Input: operations = ["--X","X++","X++"]
    Output: 1
    Explanation: The operations are performed as follows:
    Initially, X = 0.
    --X: X is decremented by 1, X =  0 - 1 = -1.
    X++: X is incremented by 1, X = -1 + 1 =  0.
    X++: X is incremented by 1, X =  0 + 1 =  1.
    
    Example 2:
    Input: operations = ["++X","++X","X++"]
    Output: 3
    Explanation: The operations are performed as follows:
    Initially, X = 0.
    ++X: X is incremented by 1, X = 0 + 1 = 1.
    ++X: X is incremented by 1, X = 1 + 1 = 2.
    X++: X is incremented by 1, X = 2 + 1 = 3.
    
    Example 3:
    Input: operations = ["X++","++X","--X","X--"]
    Output: 0
    Explanation: The operations are performed as follows:
    Initially, X = 0.
    X++: X is incremented by 1, X = 0 + 1 = 1.
    ++X: X is incremented by 1, X = 1 + 1 = 2.
    --X: X is decremented by 1, X = 2 - 1 = 1.
    X--: X is decremented by 1, X = 1 - 1 = 0.
    */

    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var x = 0
        for item in operations {
            if item == "--X" || item == "X--" {
                x -= 1
            }
            if item == "++X" || item == "X++" {
                x += 1
            }
        }
        return x
    }
    
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var arrayTemp = [Int]()
        let countNew = Int(nums.count / 2)
        for i in 0..<countNew {
            guard nums[countNew] == n else { break }
            let index = i + countNew
            arrayTemp.append(nums[i])
            arrayTemp.append(nums[index])
        }
        return arrayTemp
    }
}


let sol = Solution().finalValueAfterOperations(["--X","X++","X++"])



let sol1 = Solution().shuffle([2,5,1,3,4,7], 3)
