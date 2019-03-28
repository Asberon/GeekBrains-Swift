import UIKit

import Foundation

// Написать функцию, которая определяет, четное число или нет.
func div1 (value: Int) {
    let a1 = value
    let a2 = a1%2
    _ = a2 == 0 ? print("even") : print("odd")
}

div1(value: 4)


// Написать функцию, которая определяет, делится ли число без остатка на 3.

func div2(value: Int) {
    let b1 = value
    let b2 = b1%3
    _ = b2 == 0 ? print("true") : print("flase")
}

div2(value: 4)


// Создать возрастающий массив из 100 чисел.
var array = [Int]()
var i = 0

while i<100 {
    array.append(i+1)
    i += 1
}

// Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
for element in array where (element%2 == 0) || (element%3 == 0) {
    array.remove(at : (array.index(of: element)!))
}

// Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
func fibonacci (n: Int) -> (Decimal) {
    if (n<3) {
        return 1
    } else {
        var с1 : Decimal = 1, с2 : Decimal = 1, с:Decimal
        for _ in 3...n {
            с = с1+с2
            с1 = с2
            с2 = с
        }
        return с2
    }
}

var fibArray = [Decimal]()
fibArray.append(0)
var n  = 100
for i in 1...n {
    fibArray.append(fibonacci(n: i))
}
print(fibArray)


/* Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:
a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
b. Пусть переменная p изначально равна двум — первому простому числу.
c. Зачеркнуть в списке числа от 2p до n, считая шагами по p (это будут числа, кратные p: 2p, 3p, 4p, ...).
d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
e. Повторять шаги c и d, пока возможно.
*/

func Prime (num: Int) -> Bool {
    if num < 2 {
        return false
    }
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}
func PrimeArray () -> [Int] {
    var results = [Int]()
    var i = 2
    while results.count < 100 {
        if Prime(num: i) {
            results.append(i)
        }
        i += 1
    }
    
    return results
}
print (PrimeArray())
