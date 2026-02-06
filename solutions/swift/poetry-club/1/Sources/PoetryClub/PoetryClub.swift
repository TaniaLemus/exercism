//import Foundation
import Foundation
// Separate a poem in lines by "\n"

func splitOnNewlines(_ poem: String) -> [String] {
    poem.components(separatedBy: "\n")
}
// Use nested func and take 1st letter for each line (if it is empty skip and continue)

func frontDoorPassword(_ phrase: String) -> String {
  let lines = splitOnNewlines(phrase)
  var frontPassword = ""
  for line in lines {
    guard let first = line.first else { continue }
    frontPassword.append(first)
  }
  return frontPassword.isEmpty ? "_" : frontPassword
}

//Use nested func split... to break in lines, then same func before but use last instead of first and trim the empty spaces", and ad please at last" to the result
func backDoorPassword(_ phrase: String) -> String {
    let lines = splitOnNewlines(phrase)
    var backPassword = ""
    for line in lines {
        let trimmed = line.trimmingCharacters(in: .whitespaces)
        guard let last = trimmed.last else { continue }
        backPassword.append(last)
    }
    return backPassword + ", please"
}
// Take firs letter and for second line the index 1 and next line i+1 , trimm whitespaces!
func secretRoomPassword(_ phrase: String) -> String {
  let lines = splitOnNewlines(phrase)
  var result = ""

    for i in 0..<lines.count {
        let trimmed = lines[i].trimmingCharacters(in: .whitespaces)
        guard trimmed.count > i else { continue }   // evita crash si la línea es corta
        let idx = trimmed.index(trimmed.startIndex, offsetBy: i)
        result.append(trimmed[idx])
    }
    return result.uppercased() + "!"
}
