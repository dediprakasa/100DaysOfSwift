import Foundation

struct Person {
  var name: String {
    willSet {
      print("change from \(name) to \(newValue) -- willSet")
    }
    didSet {
      print("change from \(oldValue) to \(name) -- didSet")
    }
  }
}

var pogba = Person(name: "Pogba")
pogba.name = "Paul Pogba"