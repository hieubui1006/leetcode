import UIKit


/*
 Example 1:
 Input: words = ["leet","code"], x = "e"
 Output: [0,1]
 Explanation: "e" occurs in both words: "leet", and "code". Hence, we return indices 0 and 1.
 
 Example 2:
 Input: words = ["abc","bcd","aaaa","cbc"], x = "a"
 Output: [0,2]
 Explanation: "a" occurs in "abc", and "aaaa". Hence, we return indices 0 and 2.
 */

class Solution {
    func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
        var arrTemp = [Int]()
        for i in 0..<words.count {
            if words[i].contains(x) {
                arrTemp.append(i)
            }
        }
        return arrTemp
    }
}

let sol = Solution().findWordsContaining(["leet","code"], "e")
