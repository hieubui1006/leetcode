import UIKit


class Solution {
    
    var rootIndex = 0
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var value = 0
        var newNums = [Int]()
        for i in 0..<nums.count {
            value += nums[i]
            if value == target {
                newNums = [rootIndex, i]
            } else {
                value = nums[rootIndex]
            }
        }
        if !newNums.isEmpty {
            return newNums
        } else {
            rootIndex += 1
            return twoSum(nums, target)
        }
    }
}


let sol1 = Solution().twoSum([2,7,11,15], 9)
let sol2 = Solution().twoSum([3,2,4], 6)
let sol3 = Solution().twoSum([3,3], 6)

