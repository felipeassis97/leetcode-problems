class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numMap = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            let complement = target - num
            
            if let complementIndex = numMap[complement] {
                return [complementIndex, i]
            }
            numMap[num] = i
        }
        
        fatalError("No two sum solution")
    }
}