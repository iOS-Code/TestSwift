//
//  Homework.swift
//  TestSwift
//
//  Created by 岳琛 on 2018/10/12.
//  Copyright © 2018 KMF-Engineering. All rights reserved.
//

import Foundation

// FIXME:1
// 1. 实现一个函数，找出数组中字符串最长的元素
// 举例：["字符串","abc","Hello World!"]


//func checkMaxString(array : [String]) -> String {
//
//    var tmpLength = 0
//    var tmpIndex = 0
//
//    for (idx, item) in array.enumerated() {
//        if tmpLength < item.count {
//            tmpLength = item.count;
//            tmpIndex = idx;
//        }
//    }
//
//    return array[tmpIndex];
//}
//
//let hkArray = ["字符串","abc","Hello World!"]
//print(checkMaxString(array:hkArray))


// FIXME:2
// 2. 将下面下面用三目条件表达式拆分成if语句
// var a = 1, b = 2
// a + b > 10 ? (_ = (a += 1, b += 1)) : ()


//func checkLogical() {
//    var a = 1, b = 20
//    if a + b > 10 {
//        var tmp = (_ = (a += 1, b += 1))
//        print(tmp)
//    } else {
//        var tmp = ()
//        print(tmp)
//    }
//}
//print(checkLogical())


// FIXME:3
// 3. 请问下面打印结果是？
// "返回类型是可选类型值"
//
//    func returnOptionValue(value: Bool) -> String? { // 返回类型为可选String类型
//        if value {
//            return "返回类型是可选类型值" // 如果为真，返回Int类型的值1
//        } else {
//            return nil //返回nil
//        }
//    }
//
//    let optionValue = returnOptionValue(value: true) // 要用可选绑定判断再使用，因为returnOptionValue为String？可选类型
//    if let value = optionValue {
//        print(value)
//    } else {
//    print("none value")
//    }



// FIXME:4
// 4. 请问下面打印结果是？
// 匹配 let (_, y, x) where x > 8 && y < 10   打印结果是：x = 10, y = 9
//
//    let tuple = (a: 8, b: 9, c: 10)
//
//    switch tuple {
//
//    case (let x, 10, _) where x < 10,
//    (5, _, let x):
//    print("case one")
//    case (2, 8, 7 ... 9):
//    print("case two")
//
//    case var (x, 5, 6),
//    var (5, x, 6):
//    x += 10
//    print("x = \(x)")
//    case let (x, _, y) where x > 8 && y < 11,
//    let (_, y, x) where x > 8 && y < 10:
//    print("Matched case")
//    print("x = \(x), y = \(y)")
//    default:
//    print("Others")
//    }
