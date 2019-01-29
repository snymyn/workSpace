//:
import UIKit

// MARK : Section1
var str = "Hello, playground"

var colors = ["red", "green", "bulue"]
print(colors)
colors[0]
colors.append("orange")
colors.remove(at: 1)

let myAge = 25
if myAge > 30 {
    print("I'm old")
} else {
    print("you're not old")
}

myAge > 30 ? print("I'm old") : print("youre not old")

switch myAge {
    case 30...100: "I'm old"
    case 18...29: "I'm an adult"
    case 0...17: "I'm young"
    default: "NOT SURE"
}

for color in colors {
    print("This color is \(color)")
}

//MARK: Section2

func pointToRetina(point: Int) -> Int {
    return point * 2
}

pointToRetina(point: 3)

struct UserStruct {
    var name: String
    var age: Int
    var job: String
}

var user = UserStruct(name: "Shinya", age: 25, job: "Engineer")
user.name

class UserClass {
    var name: String
    var age: Int
    var job: String
    
    init(name: String, age: Int, job: String) {
        self.name = name
        self.age = age
        self.job = job
    }
}

var userA = UserStruct(name: "Lara", age: 24, job: "Student")
var userB = userA
userB.name = "Shinya"
userA.name


var userC = UserClass(name: "shinya", age: 25, job: "Designer")
var userD = userC
userD.name = "lara"
userC.name

//: # Heading
//:## SedondLevel
//:### ThirdLevel
//:MarkDown

/*
: mark down multiple
 */

//:[design]("helloworld.com")
var answer: String?
UILabel().text = answer

var answerString: String!
if let sureAnswer = answer {
    UILabel().text = sureAnswer
}

UILabel().text = answer ?? ""
