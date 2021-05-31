
import Foundation

        //1. Написать функцию, которая определяет, четное число или нет.

func findEvenNumber(number: Int) -> String {
    if number % 2 == 0 {
        return "1.1 Число \(number) четное"

    } else {
        return "1.2 Число \(number) нечетное"
}
}

print(findEvenNumber(number: 33))

func findEvenNumber2(number2: Int) -> String {
    let result: String = (number2 % 2) == 0 ? "1.2 Число \(number2) четное" : "1.2 Число \(number2) нечетное"
    return result
}

print(findEvenNumber2(number2: 54))

        //2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func isDividedByThree(number: Int) -> String {
    if number % 3 == 0 {
        return "2.1 Число \(number) делится на 3 без остатка"

    } else {
        return "2.1 Число \(number) не делится на 3 без остатка"
}
}

print(isDividedByThree(number: 34))

func isDividedByThree2(number2: Int) -> String {
    let result: String = (number2 % 3) == 0 ? "2.2 Число \(number2) делится на 3 без остатка" : "2.1 Число \(number2) не делится на 3 без остатка"
    return result
}

print(isDividedByThree2(number2: 18))

        //3. Создать возрастающий массив из 100 чисел.

var array100 = Array (1...100)

print("3. Массив из 100 чисел: \(array100)")

        //4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for value in array100 {
  if value % 2 == 0 || value % 3 != 0 {
    array100.remove(at: array100.firstIndex(of: value)!)
  }
}
print("4. Массив без четных чисел и без чисел, которые не делятся на 3: \(array100)")


        //5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

func addFibNumbers(fN1: Int, fN2: Int) -> Array<Int> {
    var fibArray: [Int] = []
    var n1 = fN1
    var n2 = fN2
    fibArray.append(n1)
    fibArray.append(n2)
    for var sum in 1...49 {
        sum = n1 + n2
        fibArray.append(sum)
        n1 = n2
        n2 = sum
    }
    return fibArray
}

print("5. Массив из 50 чисел Фибоначчи: \(addFibNumbers(fN1: 0, fN2: 1))")

//6 * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:
//a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
//b. Пусть переменная p изначально равна двум — первому простому числу.
//c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
//d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
//e. Повторять шаги c и d, пока возможно.


func removeNumers (n: Int) -> Array<Int> {
    var array = Array (2...n)
   // while p <= array[n] { // никак не получилось запихнуть это всё в цикл while
        var index = 0
        var p = array[index]
        for i in stride(from: (2 + p), to: n, by: p) {
            array.remove(at: array.firstIndex(of: i)!)
        }
        index += 1
  //  }
    return array
}

print ("6. a.b.c. \(removeNumers(n: 100))")
