//: Playground - noun: a place where people can play

import UIKit


/*
ASCII encoding:
+ 'A' ----> 0x41
+ 'B' ----> 0x24
*/

// 初始化字符串

let emptyString = ""
let emptyString1 = String()

var swift = "Swift is fun"

//NSString or NSMutableString

//String- value type
let swiftCopy = swift
print(swift)

//copy on write
//:Character

let charA:Character = "A"
let charB = "B"

for Char in swift.characters {
    print(Char)
}

let swiftInChar:[Character] = ["S","W","I","F","T"]
let swift1 = String(swiftInChar)

let swift2 = swift + swift1

//:String interpolation 
//\(expreeion)

let PI = 3.14
let message = "PI * 100 equals to\(PI * 100)"

//\ CR LF

//### UNICODE
//Unicode Scalar

let blingheart = "\u{1F496}"
blingheart.dynamicType

// Extended Grapheme Clusters
let eWithAcute = "\u{E9}"
// e + '

let anotherE = "\u{65}\u{301}"

let eWithACircle = anotherE + "\u{20DD}"

//### String operation
// Counting

let messageLength = message.characters.count

let cafe = "Caf" + anotherE

cafe.characters.count
let cafe1 = cafe + "\u{20DD}"
cafe1.characters.count

// String indices
// cafe[0],cafe[1],cafe[2] - Wrong in swift
// String.Index

cafe.startIndex
cafe.endIndex
cafe1.endIndex

cafe[cafe.startIndex.successor()]
cafe[cafe.endIndex.predecessor()]

cafe[cafe.startIndex.advancedBy(3)]
//cafe.endIndex.successor()
//Insert and remove

var cafe2 = cafe
cafe2.insert("!", atIndex: cafe2.endIndex)
cafe2.insertContentsOf(" is delicious".characters,at: cafe2.endIndex.predecessor())
cafe2.removeAtIndex(cafe2.endIndex.predecessor())
cafe2

let range = cafe2.endIndex.advancedBy(-13)..<cafe2.endIndex
cafe2.removeRange(range)
cafe2

//String Equality


let latinA = "\u{41}"
let cyrillicA = "\u{0410}"

if latinA != cyrillicA{
    print("They are not the same")
}

// hasPrefix and hasSuffix

let boxue = "The best screencasts about iOS development"

boxue.hasPrefix("The best")

boxue.hasSuffix(" iOS development")

//: ### Unicode representation

for codeunit in blingheart.utf8{
    print("\(codeunit) ",terminator:"")
}
print("")

for codeunit in blingheart.utf16{
    print("\(String(codeunit,radix: 16))",terminator:"")
}
//Unicode Scalax Representation

for codeunit in blingheart.unicodeScalars {
    codeunit.dynamicType
    print("\(String(codeunit.value,rasix: 16))")
    
}



