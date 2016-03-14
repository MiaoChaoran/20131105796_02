//: Playground - noun: a place where people can play

import UIKit


//使用optional
let possibleNumber = "123"
var convertResult = Int(possibleNumber)

print(convertResult)

convertResult.dynamicType

var x:Int?
var address: String?
var successRate: Double?

var m = 10

//m = nil
//访问optional Access optional
if convertResult != nil{
    print(convertResult!)
    let sum = convertResult! + 1
}

//print(x!)
//optional binding

if var number = convertResult {
    let sum = number + 1
    print(number)
    print(convertResult)
}
else{
    print("Convert result is nil")
}

//Implicitly Unwrapped Optionals

var possibleString:String! = "A dangrous way!"

print(possibleString)

possibleString + "Use it with caution!"
