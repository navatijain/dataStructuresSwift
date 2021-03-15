import UIKit

class Solution {
    
    func solution1(_ nums: [Int]) -> Int {
        if nums.isEmpty { return -1 }
        
        if nums.count == 0 { return nums[0] }
        
        var dictionary: [Int:Int] = [:]
        
        nums.forEach {
            if let valuePresent = dictionary[$0] {
                dictionary[$0] = valuePresent + 1
            } else {
                dictionary[$0] = 1
            }
        }
        
        for (key,value) in dictionary {
            if value == 1 {
                return key
            }
        }
        
        return -1
    }
    
    func solution2(_ nums: [Int]) -> Int {
        nums.reduce(0) { (temp, current) in
            temp ^ current
        }
    }
    
    func singleNumber(_ nums: [Int]) -> Int {
      solution2(nums)
    }
    
}
