struct Player {
  let name: String
  let height: Int
  let pos: String
}

let pogba = Player(name: "Pogba", height: 192, pos: "midfielder")
let rashford = Player(name: "Rashford", height: 186, pos: "forward")
let fred = Player(name: "Fred", height: 175, pos: "midfielder")
let matic = Player(name: "Matic", height: 191, pos: "midfielder")

let players = [pogba, rashford, fred, matic]

// most verbose method
let tallPlayers1 = players.filter({ (player: Player) -> Bool in
  if player.height >= 190 {
    return true
  } else {
    return false
  }
})

// remove the type in parameter since swift can infer its type
let tallPlayers2 = players.filter({ player in
  if player.height >= 185 {
    return true
  } else {
    return false
  }
})

// simplify the logic syntax
let midfielders = players.filter({ player in
  return player.pos == "midfielder"
})

// utilise trailing closure (remove parentheses)
let strikers = players.filter { player in
  return player.pos == "forward"
}

// probably my fav (js style)
let strikers2 = players.filter { player in player.pos == "forward"}

// gotta get used to it
let strikers3 = players.filter { $0.pos == "forward" }


print(tallPlayers1)
print(tallPlayers2)
print(midfielders)
print(strikers)
print(strikers2)
print(strikers3)