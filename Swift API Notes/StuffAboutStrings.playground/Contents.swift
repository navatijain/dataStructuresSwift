import Foundation

//MARK: STRINGS AND CHARACTERS

//Converting strings to Arrays
"hello".forEach {
    print($0)
}
let s = "Hi There"
let charArray = Array(s)

//Characters are enclosed in double quotes "!"
//Concatenation of Character to String cannot be done using +, use 'Append'
var s2 = "Anyone home"
let char = "?"
s2.append(char)

//MARK: STRINGS

//lower case
print("rANdOM sENtencE".lowercased())

//reverse
let revStr = String("Swift".reversed())

//sort
let sortedStr: String
sortedStr = String("Swift".sorted())

//string prefix and suffix
let brand = "Apple"
let prefix = brand.prefix(3) //App //returns Substring not String
let suffix = brand.suffix(3) // ple //returns Substring not String
print(brand.hasPrefix("Ap"))//true
print(brand.hasSuffix("le"))//true

//Array of Strings - Components
let csvFile = "Apples,Oranges,Pineapples,Bananas"
let seperateValues = csvFile.components(separatedBy: ",")
print(seperateValues)//["Apples", "Oranges", "Pineapples", "Bananas"]
let input = "a b c"
let letters = input.components(separatedBy: " ")//[“a”, ”b”, ”c”]

//Trim
let untrimmed = " some spaces "
let trimmed = untrimmed.trimmingCharacters(in: .whitespaces)
print(trimmed) //"some spaces"
let untrimmed2 = "\n some spaces and new lines \n"
print(untrimmed2)
let trimmed2 = untrimmed2.trimmingCharacters(in: .whitespacesAndNewlines)
print(trimmed2)

//first, last
let word = "orange"
print(word.first) //Optional("o")
print(word.last) //Optional("e")
let blank = ""
print(blank.first) //nil
print(blank.last) //nil

//is number
let possibleNumber1 = "7" as Character
print(possibleNumber1.isNumber)

//is letter
let possibleLetter = "j"
print(Character(possibleLetter).isLetter)

//Index - note startIndex vs firstIndex!
//startIndex
let sample = "Steve Jobs"
let start = sample.startIndex //String.Index not Int
let indexOfV = sample.firstIndex(of: "v") //index at
if let identifiedIndex = indexOfV {
let intValueOfIndex = sample.distance(from: start, to: identifiedIndex)
    print(intValueOfIndex)//3
    
    //offset
    let threeCharsAfterV = sample.index(identifiedIndex, offsetBy: 3)
    print(sample[threeCharsAfterV]) //J
}

//// SUBSTRING
let subtring: Substring = "Hello world"
let mainString = String("Welcome \(subtring)")

let greeting = "Hi there! It's nice to meet you! 👋"
let endOfSentence = greeting.firstIndex(of: "!")!
let firstSentence = greeting[...endOfSentence]



