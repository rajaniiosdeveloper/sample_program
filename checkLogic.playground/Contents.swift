import UIKit

var greeting = "Hello, playground"
class Language {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}
var reference1: Language?
var reference2: Language?
var reference3: Language?

reference1 = Language(name: "Swift")

reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil

print(reference1?.name)
print(reference2?.name)
print(reference3?.name)


protocol A {}
 protocol B {}
 
 class Base {}
class NewClass : Base, A,B {
 }

struct Person {
     let name: String
     let age: Int
 }

 struct PeopleViewModel {
 
     var people: [Person]
     
     lazy var oldest: Person? = {
         print("oldest person calculated")
         return people.max(by: { $0.age < $1.age })
     }()
 
     init(people: [Person]) {
         self.people = people
         print("View model initialized")
     }
 }

var viewModel = PeopleViewModel(people: [
     Person(name: "Antoine", age: 30),
     Person(name: "Jaap", age: 3),
     Person(name: "Lady", age: 3),
     Person(name: "Maaike", age: 27)
 ])
print(viewModel.oldest)
 
viewModel.people.append(Person(name: "John", age: 69))

 print(viewModel.oldest)
