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
