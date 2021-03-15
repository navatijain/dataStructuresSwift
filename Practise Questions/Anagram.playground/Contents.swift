import Foundation

var str = "Anagram"

func isAnagram(_ s: String, _ t: String) -> Bool {
       if s.count != t.count { return false }
       return s.sorted() == t.sorted()
   }

isAnagram("bottle", "tletob")
isAnagram("", "")
isAnagram("dew", "dew ")
