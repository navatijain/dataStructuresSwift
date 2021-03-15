import UIKit

var str = "Handy functions in Swift Collections"


//ZIP Function
let singlesList1 = ["Mary","Tara","Natasha"]
let singlesList2 = ["George","Jay","Sid","Harry"]

let pairedUp = zip(singlesList1,singlesList2)

for (name1,name2) in pairedUp {
    print("\(name1) met \(name2)")
}
//Harry is left out :/


//GROUP BY - INIT FUNCTION
let countries = ["Canada", "USA", "UAE", "Mexico","Myanmar"]

let countriesByFirstLetter = Dictionary(grouping: countries) { $0.first ?? " "}

if let countriesWithC = countriesByFirstLetter["C"] {
    print (countriesWithC)
}

if let countriesWithU = countriesByFirstLetter["U"] {
    print (countriesWithU)
}

//UNIQUE KEYS
let menuOptions = [("appetizer", "salad"), ("appetizer", "soup"),("maincourse", "pasta"),("maincourse", "pizza"),("dessert", "ice-cream"),("dessert", "pie"),("dessert", "cheesecake")]

let firstOption = Dictionary(menuOptions, uniquingKeysWith: { (firstOption, _) in
    firstOption
})

print(firstOption)

let array = [(4,1), (6,2), ]
Dictionary(uniqueKeysWithValues: array)

//XOR

let a: Int = 17
let b: Int = 18

let c = UInt(a) ^ UInt(b)

print(c)





    




