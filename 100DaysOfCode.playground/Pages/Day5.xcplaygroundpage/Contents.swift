import UIKit

func defenderLineUp(players: String...) {
    for player in players {
        print(player)
    }
}

defenderLineUp(players: "AWB", "Lindelof", "Maguire", "Shaw")

enum FergieShout: Error {
    case notGK
}

func goalKeeper(is name: String) throws -> Bool{
    if name != "De Gea" {
        throw FergieShout.notGK
    }
    
    return true
}

do {
    try goalKeeper(is: "Fred")
    print("yeah")
} catch {
    print(error)
}
