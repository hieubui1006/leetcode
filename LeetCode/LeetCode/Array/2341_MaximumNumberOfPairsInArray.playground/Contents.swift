import UIKit


/*
 Example 1:
 Input: nums = [1,3,2,1,3,2,2]
 Output: [3,1]
 Explanation:
 Form a pair with nums[0] and nums[3] and remove them from nums. Now, nums = [3,2,3,2,2].
 Form a pair with nums[0] and nums[2] and remove them from nums. Now, nums = [2,2,2].
 Form a pair with nums[0] and nums[1] and remove them from nums. Now, nums = [2].
 No more pairs can be formed. A total of 3 pairs have been formed, and there is 1 number leftover in nums.
 
 Example 2:
 Input: nums = [1,1]
 Output: [1,0]
 Explanation: Form a pair with nums[0] and nums[1] and remove them from nums. Now, nums = [].
 No more pairs can be formed. A total of 1 pair has been formed, and there are 0 numbers leftover in nums.

 Example 3:
 Input: nums = [0]
 Output: [0,1]
 Explanation: No pairs can be formed, and there is 1 number leftover in nums.
 */


class Solution {
    func numberOfPairs(_ nums: [Int]) -> [Int] {
        var pairsNumber = 0
        var pairNumberIndexs = [Int]()
        for i in 0..<nums.count {
            guard !pairNumberIndexs.contains(i) else { continue }
            for j in i+1..<nums.count {
                if nums[i] == nums[j] {
                    pairNumberIndexs.append(i)
                    pairNumberIndexs.append(j)
                    pairsNumber += 1
                    break
                }
            }
        }
        return [pairsNumber, nums.count - (pairsNumber * 2)]
    }
}

let sol = Solution().numberOfPairs([1,3,2,1,3,2,2])
let sol1 = Solution().numberOfPairs([1,1])
let sol2 = Solution().numberOfPairs([0])
