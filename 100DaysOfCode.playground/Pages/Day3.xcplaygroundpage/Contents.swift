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