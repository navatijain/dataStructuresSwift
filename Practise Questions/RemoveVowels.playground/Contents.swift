import Foundation

var str = "Remove Vowels"

func removeVowels(from str: String) -> String {
    var newString = ""
    str.forEach {
        if !$0.isVowel() {
            newString.append($0)
        }
    }
    return newString
}

extension Character {
    func isVowel() -> Bool{
        switch self.lowercased() {
        case "a","e","i","o","u":
            return true
        default:
            return false
        }
    }
}

removeVowels(from: "hello")
removeVowels(from: "wxyxz")
removeVowels(from: "so many VOWELS")
removeVowels(from: "aEiou")
removeVowels(from: "u")
