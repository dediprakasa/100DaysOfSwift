import Foundation

struct Ibra {
    var name: String
    
    mutating func changeName(to name: String) {
        self.name = name
    }
}

let ibra = Ibra(name: "Ibra")

// can't be executed
//ibra.changeName(to: "Lingard")

var arbi = Ibra(name: "Movic")
arbi.changeName(to: "Bebe")
print(arbi.name)
