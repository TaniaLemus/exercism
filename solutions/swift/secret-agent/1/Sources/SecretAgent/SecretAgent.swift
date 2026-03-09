func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    func possiblePassword(_ attempt: String) -> String {
    if attempt == password { return secret }
      else { return "Sorry. No hidden secrets here." }
  }
  return possiblePassword
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
    let a = f(room)
    let b = f(a)
    let c = f(b)
    return (a, b, c)
}
