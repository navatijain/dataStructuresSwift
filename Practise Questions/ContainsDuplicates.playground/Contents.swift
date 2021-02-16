import Foundation

var str = "Contains Duplicates"

func containsDuplicates(_ arrayOfStrings: [String]) -> Bool {
    var set: Set<String> = []
    for currentString in arrayOfStrings {
        if set.contains(currentString.lowercased()) {return true}
        set.insert(currentString.lowercased())
    }
    return false
}

containsDuplicates(["has","having","will have"])
containsDuplicates(["has","having","will have", "Has"])
containsDuplicates(["has"])
containsDuplicates([])
