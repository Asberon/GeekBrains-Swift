import UIKit

var str = "Hello, playground"

//: Playground - noun: a place where people can play

import Foundation

// Решить квадратное уравнение.
var a = 3
var b = 4
var c = -6

if (a != 0) {
    if (b != 0) && (c != 0){
        let d = (b*b-4*a*c)
        if (d<0) {
            print("No roots")
        } else if (d == 0) {
            let x = (-b)/2*a
            print("root: \(x)")
        } else if (d>0) {
            let x1: Double = ((Double(-b))+sqrt(Double(d)))/2*Double(a)
            let x2: Double = ((Double(-b))-sqrt(Double(d)))/2*Double(a)
            print("Первый корень: \(x1), Второй корень: \(x2)")
        }
    } else if (c == 0) {
        let x1 = 0
        let x2 = (-b)/a
        print(x1,x2)
    } else if (b == 0) && ((a>0)&&(c<0) || (a<0)&&(c>0)) {
        let x = sqrt(Double(Double(-c)/Double(a)))
        print ("first root: +\(x), second root: -\(x)")
    }
} else { print ("Input Error. It's not a quadratic equation if a=0!") }

// Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

var leg1:Double = 3
var leg2:Double = 5

let hypotenuse:Double = leg1*leg1 + leg2*leg2
let s:Double = (leg1*leg2)/2
let p:Double = leg1+leg2+hypotenuse
print ("Гипотенуза: \(hypotenuse)")
print ("Площадь: \(s)")
print ("Периметр: \(p)")


// Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
var count: Double = 5000
var percent: Double = 8.9
var i = 1

while i<6 {
    i += 1
    count = count + (count*percent)/100
}

print ("Сумма вклада через 5 лет: \(round(count))")

