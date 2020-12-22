import Foundation

class Player {
  var name = "Pogba"

  init() {
    print("\(name) <<<<")
  }

  deinit {
    print("\(name) whattt!!")
  }
}

for _ in 0..<3 {
  let _ = Player()
}