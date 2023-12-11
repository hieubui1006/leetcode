import UIKit

class Solution {
    /*
    Input: nums = [1,2,3,1,1,3]
    Output: 4
    Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
    */
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var item = 0
        for i in 0..<nums.count {
            for j in i + 1..<nums.count {
                if nums[i] == nums[j] {
                    item += 1
                }
            }
        }
        return item
    }
}

let sol = Solution().numIdenticalPairs([1,2,3,1,1,3])
let sol1 = Solution().numIdenticalPairs([1,1,1,1])

