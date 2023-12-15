import UIKit

/*
 Example 1:
 Input: nums = [4,4,2,4,3]
 Output: 3
 Explanation: The following triplets meet the conditions:
 - (0, 2, 4) because 4 != 2 != 3
 - (1, 2, 4) because 4 != 2 != 3
 - (2, 3, 4) because 2 != 4 != 3
 Since there are 3 triplets, we return 3.
 Note that (2, 0, 4) is not a valid triplet because 2 > 0.
 
 Example 2:
 Input: nums = [1,1,1,1,1]
 Output: 0
 Explanation: No triplets meet the conditions so we return 0.
 */


class Solution {
    func unequalTriplets(_ nums: [Int]) -> Int {
        var countItem = 0
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                guard nums[i] != nums[j] else { continue }
                for k in j+1..<nums.count {
                    guard nums[i] != nums[k] && nums[k] != nums[j] else { continue }
                    countItem += 1
                }
            }
        }
        return countItem
    }
}

let sol = Solution().unequalTriplets([4,4,2,4,3])
let sol1 = Solution().unequalTriplets([1,1,1,1,1])
