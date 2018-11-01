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
    
    // 使用 class 和类名来创建一个类。类中属性的声明和常量、变量声明一样，唯一的区别就是它们的上下文是类。
    //同样，方法和函数声明也一样
    class Shape {
        var numberOfSides = 0
        func simpleDescription() -> String {
            return "A shape with \(numberOfSides) sides."
        }
    }
    
//    var shapeObj = Shape()
//    shapeObj.numberOfSides = 7
//    var shapeDescription = shapeObj.simpleDescription()
//    print(shapeDescription)

    
    
    //这个版本的 Shape 类缺少了一些重要的东西：一个构造函数来初始化类实例。使用 init 来创建一个构造器。
    class NamedShape {
        var numberOfSide:Int = 0
        var name:String
        
        init(name:String) {
            self.name = name
        }
        func simpleDescription() -> String {
            return "A shape with \(numberOfSide) sides."
        }
    }
    
//    var namedShapeObj = NamedShape.init(name: "YUECHEN")
    
    
    //注意 self 被用来区别实例变量 name 和构造器的参数 name。当你创建实例的时候，像传入函数参数一样给类传入构造器的参数。每个属性都需要赋值——无论是通过声明（就像 numberOfSides）还是通过构造器（就像  name）。
    
    //如果你需要在删除对象之前进行一些清理工作，使用 deinit 创建一个析构函数。
    
    //子类的定义方法是在它们的类名后面加上父类的名字，用冒号分割。创建类的时候并不需要一个标准的根类，所以你可以根据需要添加或者忽略父类。
    
    //子类如果要重写父类的方法的话，需要用 override 标记——如果没有添加 override 就重写父类方法的话编译器会报错。编译器同样会检测 override 标记的方法是否确实在父类中。
    
    class Square:NamedShape {
        var sideLength : Double
        
        init(sideLength:Double, name:String) {
            self.sideLength = sideLength
            super.init(name: name)
            numberOfSide = 4
        }
        
        func area() -> Double {
            return sideLength * sideLength
        }
        
        override func simpleDescription() -> String {
            return "a squre with sides of length \(sideLength)"
        }
    }
    
//    let test = Square(sideLength: 5.2, name: "my test square")
//    test.area()
//    test.simpleDescription()
    
    
    class EquilateralTriangle: NamedShape {
        var sideLength: Double = 0.0
        
        init(sideLength: Double, name: String) {
            self.sideLength = sideLength
            super.init(name: name)
            numberOfSide = 3
        }
        
        var perimeter: Double {
            get {
                return 3.0 * sideLength
            }
            set {
                sideLength = newValue / 3.0
            }
        }
        
        override func simpleDescription() -> String {
            return "An equilateral triangle with sides of length \(sideLength)."
        }
    }
//    var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
//    print(triangle.perimeter)
//    triangle.perimeter = 9.9
//    print(triangle.sideLength)
    
    
    class TriangleAndSquare {
        
        var triangle: EquilateralTriangle {
            willSet {
                square.sideLength = newValue.sideLength
            }
        }
        
        var square: Square {
            willSet {
                triangle.sideLength = newValue.sideLength
            }
        }
        
        init(size:Double, name:String) {
            square = Square(sideLength: size, name: name)
            triangle = EquilateralTriangle(sideLength: size, name: name)
        }
    }
    
//    var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
//    print(triangleAndSquare.square.sideLength)
//    print(triangleAndSquare.triangle.sideLength)
    
    //处理变量的可选 可以在操作之前加？
    //如果?之前的值是nil  ?后面的东西会被忽略 整个表达式返回nil   否则?之后的东西都会被运行
    //两种情况  整个表达式的值是可选值
//    let optionalSquare : Square? = Square(sideLength: 2.5, name: "optional square")
//    let sideLength = optionalSquare?.sideLength
    

}


//TODO:枚举和结构体（Enumerations and Structures）

func EnumerationsStructures() {
    
    enum Rank: Int {
        case ace = 1
        case two, three, four, five, six, seven, eight, nine, ten
        case jack, queen, king
        func simpleDescription() -> String {
            switch self {
            case .ace:
                return "ace"
            case .jack:
                return "jack"
            case .queen:
                return "queen"
            case .king:
                return "king"
            default:
                return String(self.rawValue)
            }
        }
    }
    let ace = Rank.ace
    let aceRawValue = ace.rawValue
    print(ace, aceRawValue)
    
    
    /**
     默认情况下，Swift按照从0开始，每次加1的方式为原始值赋值，不过可以通过显式赋值进行改变。
     可以使用字符串、浮点数作为枚举的原始值。
     使用rawValue属性来访问一个枚举成员的原始值
     */
    
    /**
     init?(rawValue:)初始化构造器创建一个带原始值的枚举
     如果存在与原始值相应的枚举成员就返回该枚举成员，否则就返回 nil。
     */
    if let convertedRank = Rank(rawValue: 12) {
        let threeDescription = convertedRank.simpleDescription()
        print(threeDescription)
    }
    
    /**
     枚举的关联值是实际值，并不是原始值得另一种表达。
     如果没有比较有意义的原始值，你就不需要提供原始值。
     */
    enum Suit {
        case spades, hearts, diamonds, clubs
        func simpleDescription() -> String {
            switch self {
            case .spades:
                return "spades"
            case .hearts:
                return "hearts"
            case .diamonds:
                return "diamonds"
            case .clubs:
                return "clubs"
            }
        }
    }
    let hearts = Suit.hearts
    let heartsDescription = hearts.simpleDescription()
    print(heartsDescription)
    
    /**
     如果枚举成员的实例有原始值，那么这些值是在声明的时候就已经决定了
     这意味着不同的枚举成员总会有一个相同的原始值。
     当然也可以为枚举成员设定关联值，关联值是在创建实例时决定的。
     这意味着不同的枚举成员的关联值都可以不同。
     你可以把关联值想象成枚举成员的寄存属性。
     */
    
//    enum ServerResponse {
//        case result(String, String)
//        case failure(String)
//    }
//
//    let success = ServerResponse.result("5:00 am", "6:00 pm")
//    let failure = ServerResponse.failure("out of cheese")
//
//    switch success {
//    case let .result(sunrise, sunset):
//        print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
//    case let .failure(message):
//        print("Failure... \(message)")
//    }
}


//TODO:协议和扩展（Protocols and Extensions）

func ProtocolsExtensions() {
    
    //使用 protocol 来声明一个协议。
//    protocol ExampleProtocol {
//        var simpleDescription: String { get }
//        mutating func adjust()
//    }
    
    //类、枚举和结构体都可以实现协议。
//    class SimpleClass: ExampleProtocol {
//        var simpleDescription: String = "A very simple class."
//        var anotherProperty: Int = 69105
//        func adjust() {
//            simpleDescription += " Now 100% adjusted."
//        }
//    }
//
//    var a = SimpleClass()
//    a.adjust()
//    let aDescription = a.simpleDescription
//    print(aDescription)
//
//    struct SimpleStructure: ExampleProtocol {
//        var simpleDescription: String = "A simple structure"
//        mutating func adjust() {
//            simpleDescription += "(adjusted)"
//        }
//    }
//    var b = SimpleStructure()
//    b.adjust()
//    let bDescription = b.simpleDescription
//    print(bDescription)
    
    /**
     声明 SimpleStructure 时候 mutating 关键字用来标记一个会修改结构体的方法。
     SimpleClass的声明不需要标记任何方法，因为类中的方法通常可以修改类属性
     */
    
    /**
     使用extension来为现有的类型添加功能 比如新的方法和计算属性。
     你可以使用扩展让某个在别处声明的类型来遵守某个协议 同样适用于从外部库或者框架引入的类型
     */
//    protocol IntProtocol {
//        var simpleDescription: String { get }
//        mutating func adjust()
//    }
//
//    extension Int: IntProtocol {
//        var simpleDescription: String {
//            return "The number \(self)"
//        }
//        mutating func adjust() {
//            self += 10
//        }
//    }
//    var number:Int = 7
//    print(number.simpleDescription)
//    number.adjust()
//    print(number.simpleDescription)
    
    
    /**
     可以使用其他命名类型一样使用协议名
     */
//    let protocolValue : ExampleProtocol = a
//    print(protocolValue.simpleDescription)
}


//TODO:错误处理（Error Handling）

func ErrorHandling() {
    
    /**
     使用采用Error协议的类型来表示错误
     */
    
    enum PrinterError: Error {
        case outOfPaper
        case noToner
        case onFire
    }
    
    /**
     使用 throw 来抛出一个错误并使用 throws 来表示一个可以抛出错误的函数。
     如果在函数中抛出一个错误，这个函数会立刻返回并且调用该函数的代码会进行错误处理。
     */
    
    func send(job:Int, toPrinter printerName:String) throws -> String {
        if printerName == "Never Has Toner" {
            throw PrinterError.noToner
        }
        return "Job sent"
    }
    
    
    /**
     有多种方式可以用来进行错误处理。
     一种方式是使用 do-catch 。在 do 代码块中，使用 try 来标记可以抛出错误的代码。在 catch 代码块中，除非你另外命名，否则错误会自动命名为 error 。
     */
    do {
        let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
        //    let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
        print(printerResponse)
    } catch {
        print(error)
    }
    
    /**
     可以使用多个 catch 块来处理特定的错误。参照 switch 中的 case 风格来写 catch。
     */
    do {
        let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
        print(printerResponse)
    } catch PrinterError.onFire {
        print("I'll just put this over here, with the rest of the fire.")
    } catch let printerError as PrinterError {
        print("Printer error: \(printerError).")
    } catch {
        print(error)
    }
    
    
    /**
     另一种处理错误的方式使用 try? 将结果转换为可选的。如果函数抛出错误，该错误会被抛弃并且结果为 nil。否则的话，结果会是一个包含函数返回值的可选值。
     */
    let printerSuccess = try? send(job: 1886, toPrinter: "Mergenthaler")
    let printerFailure = try? send(job: 1888, toPrinter: "Never Has Toner")
    
    /**
     使用 defer 代码块来表示在函数返回前，函数中最后执行的代码。
     无论函数是否会抛出错误，这段代码都将执行。
     使用 defer，可以把函数调用之初就要执行的代码和函数调用结束时的扫尾代码写在一起，虽然这两者的执行时机截然不同。
     */
    
    var fridgeIsOpen = false
    let fridgeContent = ["milk", "eggs", "leftovers"]
    
    func fridgeContains(_ food:String) -> Bool {
        fridgeIsOpen = true
        defer {
            fridgeIsOpen = false
        }
        
        let result = fridgeContent.contains(food)
        return result
    }
    print(fridgeContains("eggs"), fridgeIsOpen)

}


//TODO:泛型（Generics）

func Generics() {
    
    /**
     在尖括号里写一个名字来创建一个泛型函数或者类型。
     */
    func repeatItem<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
        var result = [Item]()
        for _ in 0..<numberOfTimes {
            result.append(item)
        }
        return result
    }
    print(repeatItem(repeating: "Knock", numberOfTimes: 3))
    
    /**
     可以创建泛型函数、方法、类、枚举、结构体
     */
    
    enum OptionalValue<Wrapped> {
        case None
        case Some(Wrapped)
    }
    var possibleInteger: OptionalValue<Int> = .None
    print(possibleInteger)
    possibleInteger = .Some(100)
    print(possibleInteger)
    
    /**
     在类型后面使用 where 来制定对类型的需求
     比如 限定类型实现某一个协议，限定两个类型相同，限定某个类必须有一个特定的父类
     */
    func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
        where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
            for lhsItem in lhs {
                for rhsItem in rhs {
                    if lhsItem == rhsItem {
                        return true
                    }
                }
            }
            return false
    }
    print(anyCommonElements([1, 2, 3], [3]))
}

