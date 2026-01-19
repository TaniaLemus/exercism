

let ranks = 1...8
let files = "A"..."H"

func isValidSquare(rank: Int, file: String) -> Bool {
  if ranks.contains(rank) && files.contains(file) {
    return true
  } else{
    return false
  }
}


func getRow(_ board: [String], rank: Int) -> [String] {
  let lineStarts = (rank - 1) * 8
  let endLine = lineStarts + 8

  return Array(board[lineStarts..<endLine])
}
