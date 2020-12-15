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

// create custom initializer in extension to retain memberwise initializer
extension Ibra {
    init(heyho: String) {
        name = heyho + "Uhuy"
    }
    
    init() {
        name = "Ibrahimovic"
    }
}

let name1 = Ibra(name: "Ibracadabra")
let name2 = Ibra(heyho: "Wooow")
let name3 = Ibra()

print(name1, name2, name3)
