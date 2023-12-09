import UIKit


class Solution {
    
    var rootIndex = 0
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var value: Int = 0
        var newNums = [Int]()
        for i in 0..<nums.count {
            value += nums[i]
            if value == target && newNums.count > 0 {
                newNums = [rootIndex, i]
                break
            } else {
                let idx = i >= rootIndex ? rootIndex : i
                value = nums[rootIndex]
                newNums = [value]
            }
        }
        if newNums.count == 2 {
            return newNums
        } else {
            rootIndex += 1
            return twoSum(nums, target)
        }
    }
    
    /// Solution twosum
    func sumII(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in i + 1..<nums.count {
                if nums[j] == target - nums[i] {
                    return [i,j]
                }
            }
        }
        return []
    }
}


let sol1 = Solution().twoSum([2,7,11,15], 9)
let sol2 = Solution().twoSum([3,2,4], 6)
let sol3 = Solution().twoSum([3,3], 6)

