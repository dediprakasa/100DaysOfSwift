import Foundation

/*
 Property in protocol must have explicit { get } or { get set } specifier
 */

protocol Product {
    var price: Double { get set }
    var weight: Int { get set }
}

protocol Computer {
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
}

protocol Laptop: Computer {
    var screenSize: Int { get set }
}
