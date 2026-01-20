func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
  var total = 0
  for number in birdsPerDay {
    total = total + number
  }
  return total
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
  var total = 0
  let indexWeekStart = (weekNumber - 1) * 7
  let indexWeekEnd = indexWeekStart + 6
 // let week = (indexWeekStart...indexWeekEnd)

  for week in birdsPerDay [indexWeekStart...indexWeekEnd] {
    total += week
  }
  return total
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
  var fixed = birdsPerDay
  for i in stride (from:0, to: fixed.count, by: 2) {
    fixed[i] += 1
  }
return fixed
}
