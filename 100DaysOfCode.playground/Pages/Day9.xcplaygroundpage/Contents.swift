import Foundation

struct Ibrahimovic {
    private var dna: String
    
    init(dna: String) {
        self.dna = dna
    }
    
    func identify() -> String {
        return "Confirmed a lion"
    }
}

let ibra = Ibrahimovic(dna: "cat")

print(ibra.identify())
