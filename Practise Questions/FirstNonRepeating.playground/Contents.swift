import UIKit

func firstUniqChar(_ s: String) -> Int {
    
    if s.count <= 0 { return -1 }
    
    if s.count == 1 { return 0 }
    
    var dictionary: [Character:Int] = [:]
    
    for letter in s {
        if let valuePresent = dictionary[letter] {
            dictionary[letter] = valuePresent + 1
        } else {
            dictionary[letter] = 1
        }
    }
    
    var index = 0
    for letter in s {
        if dictionary[letter] == 1 {
            return index
        }
        index += 1
    }
    return -1
}

//Question: https://leetcode.com/problems/first-unique-character-in-a-string/
