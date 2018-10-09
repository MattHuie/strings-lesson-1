//
//  main.swift
//  Strings
//
//  Created by Matthew Huie on 10/9/18.
//  Copyright © 2018 Matthew Huie. All rights reserved.
//

import Foundation

// string is a collection of characters

// string concatenation - adding
let firstName = "john"
let lastName = "appleseed"
// use a variable full name to concatenate first name and last name
let fullName  = firstName + " " + lastName
print("the person's full name is \(fullName)")



// string interpolation
let year = 2018
// use string interpolation to print out the year
print("the current year is \(year)")


// string literal
let name = "eli"


// initialization - set a default value
var date: String = "October 9th, 2018"
print(date)


// test for empty string
let emptyString = ""
emptyString.isEmpty ? print("is empty") : print("not empty")  // ternary operator

// alternate with if/else
if emptyString.isEmpty {  // .isEmpty is a built-in function
    print("is empty - using if/else")
} else {
    print("not empty - using if/else")
}



let str1 = "pursuit"
let str2 = "c4q"

str1 == str2 ? print("you are in both cohorts") : print("pursuit the dream")


// string formatting
let someString = String(format: "%.2f", 10.345)
print("using string formatting to print 2 decimal places \(someString)")


// string mutability
let homePlanet = "earth" // immutable - cannot change

var codingExperience = 0 // mutable - means can change
codingExperience = 10


// casting
let stringExperience = String(codingExperience)
print("I have \(stringExperience) in coding")


// value type - copy of things (can't change the original)
// reference - pointing to the same object (can change the original)
let movie = "toy story"
var nextMovie = movie
nextMovie += " 2" //. if next movie was a class type it would alter movie's value


// iterating through a string
let iOS = "iOS is awesome!!!!"
for letter in iOS { // using a for - in loop to print out every character of iOS String
   // print() - defaults to printing on seperate line because of new line character
    print(letter, terminator:"|") // does not default to a new line
}
    print("")

// count characters in a string
// count is a property of a collection type - counts number of items in a collection
print("there are \(iOS.count) characters in the string")

// drop the last chracter in a string
print("dropping the last character \(iOS.dropLast())")

print(iOS)



// reverse string
let greeting = "hello"
var reverse = String(greeting.reversed())
print("reverse greeting is \(reverse)")

// check if the string is a palindrome
let testPalindromeStr = "Racecar".lowercased()           // capital letter and lower case letters have different unicodes e.g a != A
let isPalindrome = String(testPalindromeStr.reversed())
if testPalindromeStr == isPalindrome {
    print("is a palindrome")
} else {
    print("Not a palindrome")
}


// comparing unicode scalar vs string literal
let unicodeSpace = "\u{20}"
let stringLiteralSpace = " "
unicodeSpace == stringLiteralSpace ? print("equal") : print("not equal")



// U+1F40D is snake
let snake = "\u{1F40d}\u{1F61C}" // unicode scalar
for _ in 0...10 {
    print(snake, terminator:"")
}
print("")


