import Foundation

let date = Calendar.current.date(byAdding: .weekOfYear, value: 1, to: Date())
let formatter = DateFormatter()

formatter.dateFormat = "dd-MM-yyyy"
let result = formatter.string(from: date ?? Date())

print(result)

struct Obj: Hashable {
    let name: String
}

// automatic synthesis of 'Hashable' is not supported for classes
//class ObjClass: Equatable, Hashable {
//    static func == (lhs: ObjClass, rhs: ObjClass) -> Bool {
//        lhs.name == rhs.name
//    }
//
//
//    let name: String
//
//    init(name: String) {
//        self.name = name
//    }
//}

let obj = Obj(name: "one")
let obj2 = Obj(name: "one")

//let room = ObjClass(name: "class")
//let room2 = ObjClass(name: "class")

let set = Set([obj, obj2])

//let set2 = Set([room, room2])

print(set.count)
