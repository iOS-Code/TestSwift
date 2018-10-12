//
//  main.swift
//  TestSwift
//
//  Created by 岳琛 on 2018/10/12.
//  Copyright © 2018 KMF-Engineering. All rights reserved.
//

import Foundation

func sayHelloWorld() -> String {
    return "Hello, World!"
}
print(sayHelloWorld())

//TODO:简单值（Simple Values）

//var myVar = 40
//myVar = 50
//let myConstant = 40
//let myDouble:Double = 70
//print(myVar, myConstant, myDouble)
//
//// 现式转换
//let label = "The width is"
//let width = 90
//let widthLabel = label + " " + String(width)
//print(widthLabel)
//
//// 快速转换
//let apples = 3
//let oranges = 5
//let appleSummary = "I have \(apples) apples."
//let fruitSummary = "I have \(apples + oranges) pieces of fruit."
//print(appleSummary, fruitSummary)
//
//// 创建数组和字典
//var shoppingList = ["catfish", "water", "tulips", "blue paint"]
//shoppingList[1] = "bottle of water";
//
//var occupations = [
//    "Malcolm": "Captain",
//    "Kaylee": "Mechanic",
//]
//occupations["Jayne"] = "Public Relations"
//
//print(shoppingList, occupations)
//
//// 创建空数组和空字典
//let emptyArray = [String]()
//let emptyDictionary = [String: Float]()
//
//shoppingList = []
//occupations = [:]
//
//print(shoppingList, occupations)

// TODO:控制流（Control Flow）

// IF的语句中，必须是一个布尔表达式，不会隐形与0进行对比
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

// IF和Let来处理值缺失的情况，这些纸可以由可选值代表
// 可选值是一个具体的值或者nil，nil表示值缺失，在类型后面加一个❓来标记这个变量是可选的
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)

// 如果变量的可选值是 nil，条件会判断为 false，大括号中的代码会被跳过。如果不是 nil，会将值解包并赋给  let 后面的常量，这样代码块中就可以使用这个值了。
let nickName: String? = nil
let fullName: String = "John Appleseed"
// 另一种处理可选值的方法是通过使用 ?? 操作符来提供一个默认值。如果可选值缺失的话，可以使用默认值来代替。
let informalGreeting = "Hi \(nickName ?? fullName)"

//TODO:函数和闭包（Functions and Closures）


//TODO:对象和类（Objects and Classes）


//TODO:枚举和结构体（Enumerations and Structures）


//TODO:协议和扩展（Protocols and Extensions）


//TODO:错误处理（Error Handling）


//TODO:泛型（Generics）

