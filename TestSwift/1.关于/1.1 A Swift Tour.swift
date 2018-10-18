//
//  1.1 Swift Tour.swift
//  TestSwift
//
//  Created by 岳琛 on 2018/10/12.
//  Copyright © 2018 KMF-Engineering. All rights reserved.
//

import Foundation

//TODO:简单值（Simple Values）

func SimpleValues() {
    
    var myVar = 40
    myVar = 50
    let myConstant = 40
    let myDouble:Double = 70
    print(myVar, myConstant, myDouble)
    
    // 现式转换
    let label = "The width is"
    let width = 90
    let widthLabel = label + " " + String(width)
    print(widthLabel)
    
    // 快速转换
    let apples = 3
    let oranges = 5
    let appleSummary = "I have \(apples) apples."
    let fruitSummary = "I have \(apples + oranges) pieces of fruit."
    print(appleSummary, fruitSummary)
    
    // 创建数组和字典
    var shoppingList = ["catfish", "water", "tulips", "blue paint"]
    shoppingList[1] = "bottle of water";
    
    var occupations = [
        "Malcolm": "Captain",
        "Kaylee": "Mechanic",
        ]
    occupations["Jayne"] = "Public Relations"
    
    print(shoppingList, occupations)
    
    // 创建空数组和空字典
    let emptyArray = [String]()
    let emptyDictionary = [String: Float]()
    print(emptyArray, emptyDictionary)
    
    shoppingList = []
    occupations = [:]
    print(shoppingList, occupations)
}


// TODO:控制流（Control Flow）

func ControlFlow() {
    
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
    let optionalString: String? = "Hello"
    print(optionalString == nil)
    
    let optionalName: String? = "John Appleseed"
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
    print(informalGreeting)
    
    
    // Switch支持任意类型数据及各种比较操作
    // 注意 let 在Switch的条件等式中，它将匹配等式的值赋给常量 x
    // 运行Switch中匹配到的条件后，程序会退出Switch语句
    
    let vegetable = "red pepper"
    switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.")
    }
    
    // 遍历
    // 使用 for-in 遍历字典，需要两个变量表示键值
    let interestingNumbers = [
        "Prime":[12, 13, 14, 15, 17, 19],
        "Fibonacci":[20, 21, 22, 26, 28, 29],
        "Square":[31, 34, 36, 37, 38, 39]
    ]
    
    var largest = 0
    
    for (kind, numbers) in interestingNumbers {
        print(kind)
        for number in numbers {
            largest = number > largest ? number : largest;
            print("number is \(number), largest is \(largest)")
        }
    }
    
    print(largest)
    
    
    // 重复
    // 使用While
    var n = 2
    while n < 100 {
        n = n * 2
    }
    print(n)
    
    // 使用repeat
    var m = 2
    repeat {
        m = m * 2
    } while m < 100
    
    print(m)
    
    // 使用范围0到3
    var total1 = 0
    for i in 0..<4 {
        total1 += i
    }
    print(total1)
    
    // 使用范围0到4
    var total2 = 0
    for i in 0...4 {
        total2 += i
    }
    print(total2)

}


//TODO:函数和闭包（Functions and Closures）

func FunctionsClosures() {
    // 声明一个函数  通过名字和参数来调用，->指定返回值
    
    //默认情况下，函数使用它们的参数名称作为它们参数的标签，在参数名称前可以自定义参数标签，或者使用 _ 表示不使用参数标签。
    func greet1(person: String, day: String) -> String {
        return "Hello \(person), today is \(day)."
    }
    print(greet1(person:"Bob", day: "Tuesday"))
    
    func greet2(_ person: String, on day: String) -> String {
        return "Hello \(person), today is \(day)."
    }
    print(greet2("John", on: "Wednesday"))
    
    
    func calculateStatistics(scores: [Int]) -> (min:Int, max:Int, sum:Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        
        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score
            }
            sum += score;
        }
        
        return (min, max, sum)
    }
    
    let statistics = calculateStatistics(scores:[5, 3, 100, 3, 9])
    print(statistics.min, statistics.max, statistics.sum)
    print(statistics.0, statistics.1, statistics.2)
    
    
    //函数可以携带可变个数的参数 表现形式是数组
    func sumOf(numbers : Int...) -> Int {
        var sum = 0
        for numberItem in numbers {
            sum += numberItem
        }
        return sum
    }
    print(sumOf())
    print(sumOf(numbers: 42, 555, 10))
    
    
    //函数可以嵌套。被嵌套的函数可以访问外侧函数的变量，你可以使用嵌套函数来重构一个太长或者太复杂的函数。
    func returnFifteen() -> Int {
        var y = 1
        
        func add() {
            y += 10
        }
        
        add()
        add()
        add()
        
        return y
    }
    print(returnFifteen())
    
    
    //函数是第一等类型，这意味着函数可以作为另一个函数的返回值。
    func makeIncrementer() -> ((Int) -> Int) {
        
        func addOne(number : Int) -> Int {
            return 1+number
        }
        return addOne
    }
    var increment = makeIncrementer()
    print(increment(7))
    
    
    //函数也可以当做参数传入另一个函数。
    func hasAnymatches(list: [Int], condition:(Int) -> Bool) -> Bool {
    
        for item in list {
            if condition(item) {
                return true
            }
        }
    
        return false
    }
    
    func lessThanTen(number:Int) -> Bool {
        return number < 10
    }
    
    let testNumbers = [20, 19, 7, 12]
    //hasAnymatches(list: numbers, condition: lessThanTen)
    print(hasAnymatches(list: testNumbers, condition: lessThanTen))
    
    
    //函数是一种特殊的闭包 一段能之后被调取的代码 闭包中的代码能访问闭包作用域中的变量和函数
    //即使闭包是在一个不同的作用域被执行，可以使用 {} 来创建一个匿名闭包，使用 in 将参数和返回值类型的声明与闭包分离
    
    let numbers = [20, 19, 7, 12]
//    numbers.map({
//        (number: Int) -> Int in
//        let tmpNum = 3 * number
//        return tmpNum
//    })
    
    //有很多种创建更简洁的闭包的方法。
    //如果一个闭包的类型已知，比如作为一个代理的回调，可以忽略参数、返回值。单个语句闭包会把它语句的值当做结果返回。
    let mappedNumbers = numbers.map({ number in 3 * number })
    print(mappedNumbers)
    
    //通过参数位置而不是参数名字来引用参数，这个方法在非常短的闭包中非常有用。
    //当一个闭包作为最后一个参数传给一个函数的时候，可以直接跟在括号后面。
    //当一个闭包是传给函数的唯一参数，可以忽略括号。
    let sortedNumbers = numbers.sorted { $0 > $1 }
    print(sortedNumbers)
    

}

//TODO:对象和类（Objects and Classes）

func ObjectsClasses() {
    
}


//TODO:枚举和结构体（Enumerations and Structures）

func EnumerationsStructures() {
    
}


//TODO:协议和扩展（Protocols and Extensions）

func ProtocolsExtensions() {
    
}


//TODO:错误处理（Error Handling）

func ErrorHandling() {
    
}


//TODO:泛型（Generics）

func Generics() {
    
}

