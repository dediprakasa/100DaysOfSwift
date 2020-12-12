let players = ["Pogba", nil, "Rashford", "Greenwood", "Fernandes", nil]

for player in players where player != nil {
  print(player)
}

// better use for case let to handle optionals and where to filter
for case let player? in players {
  print(player)
}
