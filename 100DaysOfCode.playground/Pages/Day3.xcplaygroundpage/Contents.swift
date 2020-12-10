import Foundation

struct Student {
  let name: String?
  let batch: Int?
}

let dedi = Student(name: "Dedi", batch: 2015)

func validateStudent(name: String?, batch: Int?) {
  switch (name, batch) {
    case let (.some(matchedName), .some(matchedBatch)):
      print("Hello \(matchedName) from batch \(matchedBatch)")
    case let (.some(matchedName), .none):
      print("\(matchedName), please enter your batch!")
    default:
      print("Are you really a student?")
  }
}

validateStudent(name: dedi.name, batch: dedi.batch)
validateStudent(name: "", batch: 0)

// ---------------------------------

let gpa = 3.45

if (0..<1).contains(gpa) {
  print("E")
} else if (1..<2).contains(gpa) {
  print("D")
} else if (2..<3).contains(gpa) {
  print("C")
} else if (3..<3.7).contains(gpa) {
  print("B")
} else {
  print("A")
}