// 1 Create a empty dictionary
func newScoreBoard() -> [String: Int] {
  [:]
}
// 2 Add player, dictionary already has the function to validate
func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
  scores[name] = score
}

// 3 Remove player, not need if or guard on dictionary at least you need to return something different like "the player had been deleted"
func removePlayer(_ scores: inout [String: Int], _ name: String) {
  scores.removeValue(forKey: name)
}
// 4 Reset player's score. Not need if or guard
func resetScore(_ scores: inout [String: Int], _ name: String) {
    guard scores[name] != nil else {return}
    scores[name] = 0
}

// 5 Update player score
func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
  guard scores[name] != nil else {return}
  scores[name, default: 0] += delta
  
}

// 6 list of players ordered by player name
func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
  //select * from scores order by name desc
  func players(_ l: (String, Int), _ r: (String, Int)) -> Bool {
    return l.0 < r.0
  }
  return scores.sorted(by: players)
}
// 7 ORder by highScores
func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
    func highScores(_ l: (String, Int), _ r: (String, Int)) -> Bool {
    return l.1 > r.1
  }
  return scores.sorted(by: highScores)
}




