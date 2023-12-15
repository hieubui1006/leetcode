import UIKit


/*
 Example 1:
 Input: names = ["Mary","John","Emma"], heights = [180,165,170]
 Output: ["Mary","Emma","John"]
 Explanation: Mary is the tallest, followed by Emma and John.

 Example 2:
 Input: names = ["Alice","Bob","Bob"], heights = [155,185,150]
 Output: ["Bob","Alice","Bob"]
 Explanation: The first Bob is the tallest, followed by Alice and the second Bob.
 */
class Solution {
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        var namesTemp = [String]()
        var heightTemp = [Int]()
        var itemTemp = 0
        var index = 0
        for _ in 0..<heights.count {
            for j in 0..<heights.count {
                if itemTemp < heights[j] && !heightTemp.contains(heights[j]) {
                    itemTemp = heights[j]
                    index = j
                }
            }
            if namesTemp.count < names.count {
                namesTemp.append(names[index])
                heightTemp.append(heights[index])
                index = 0
                itemTemp = 0
            }
        }
        return namesTemp
    }

}


let sol = Solution().sortPeople(["Mary","John","Emma"], [180,165,170])
