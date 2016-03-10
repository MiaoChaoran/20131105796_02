//
//  main.swift
//  20131105796_02
//
//  Created by 20131105796MCR on 16/3/10.
//  Copyright © 2016年 20131105796MCR. All rights reserved.
//

import Foundation

print("Hello, World!")
import Cocoa

var array = [123,234,12,346,4,75,67,234,23,1233,3,5,986,98,567,345,234,234]

 print("排序前的值：")

for item in array
{
    var ii = item
    print(ii)
}

for var i = 0; i < array.count - 1; ++i {
    for var j = 0; j < array.count - 1 - i; ++j{
        if array[j] > array[j + 1] {
            var temp = array[j + 1]
            array[j + 1] = array[j]
            array[j] = temp
        }
    }
}

print("排序后的值：")

for item in array
{
    var ii = item
    print(ii)
}