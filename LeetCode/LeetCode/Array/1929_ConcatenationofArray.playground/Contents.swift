import UIKit

class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var idx = 0
        var ans: [Int] = [Int].init(repeating: 0, count: nums.count * 2)
        while idx < nums.count * 2 {
            let index = idx < nums.count ? idx : idx - nums.count
            ans[idx] = nums[index]
            idx += 1
        }
        return ans
    }
}

let sol1 = Solution().getConcatenation([1,3,2,1])
let sol2 = Solution().getConcatenation([1,2,1])
