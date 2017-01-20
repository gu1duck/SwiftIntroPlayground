import UIKit

var str = "Hello, playground"

print("Hi there")

//5 + 5

var ten = 5

ten

var myCoolVariable = 67.0

var myNameIs = "My Name Is"

var myName = "Jeremy"

var intro = myNameIs + " " + myName

intro

var mathResult = 15.0 / 2

var anotherMathResult = mathResult * 3


myName = "Michael"

// myName = 5


let myPermanentName = "Jer"

// myPermanentName = "Fred"



func concatinate(word1: String, word2: String) -> String {
//    print(word1 + " " + word2)
    return word1 + " " + word2
}


concatinate(word1: "Jeremy", word2: "is cool")

let result = concatinate(word1: "Jeremy", word2: "is cool")

result


func addThese(number1: Int, number2: Int) -> Int {

//    let workInProgress = number1 + number2
//
//    let anotherStep = workInProgress + 3

    return number1 + number2
}

let result1 = addThese(number1: 5, number2: 5)
let result2 = addThese(number1: 6, number2: 6)

let total = addThese(number1: result1, number2: result2)

let total2 = addThese(number1: addThese(number1: 3, number2: 3), number2: addThese(number1: 9, number2: 9))


class Car {
    var wheels = 4
    let gears = 5

    func drive() {
        print("vroom vroom!")
    }
}

let myCar = Car()

myCar.wheels
myCar.gears

myCar.wheels = 3
myCar.wheels

let yourCar = Car()
yourCar.wheels

myCar.drive()


class Student {
    var test1: Double = 0
    var test2: Double = 0
    var paper: Double = 0

    var isCool = false

//    init(test1: Double, test2: Double, paper: Double) {
//        self.test1 = test1
//        self.test2 = test2
//        self.paper = paper
//    }
//
//    convenience init() {
//        self.init(test1: 0, test2: 0, paper: 0)
//    }
}

//let student = Student()

class Teacher {

    func percent(student: Student) -> Double {
        return student.test1 * 0.3 + student.test2 * 0.3 + student.paper * 0.4
    }

    func letterGrade(student: Student) -> String {

        let percentage = percent(student: student)

        if percentage > 85 {
            return "A"
        } else if percentage > 71 {
            return "B"
        } else if percentage > 65 {
            return "C+"
        } else if percentage > 57 {
            return "C"
        } else if percentage > 50 {
            return "C-"
        } else {
            return "F"
        }
    }

}

let mikey = Student()

mikey.test1 = 79
mikey.test2 = 85
mikey.paper = 56

let msSmith = Teacher()
//msSmith.percent(student: mikey)
//msSmith.letterGrade(percentage: 58)

msSmith.letterGrade(student: mikey)

let coolStudent = Student()
coolStudent.isCool = false

if coolStudent.isCool {
    print("so cool")
}

class MeanTeacher: Teacher {

    override func percent(student: Student) -> Double {
        return 50
    }

}

let mrEvil = MeanTeacher()

msSmith.letterGrade(student: mikey)
mrEvil.letterGrade(student: mikey)
