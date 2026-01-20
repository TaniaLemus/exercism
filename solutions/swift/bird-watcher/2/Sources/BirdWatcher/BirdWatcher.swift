//Define the total of the birds seen
func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
  var total = 0
  for number in birdsPerDay {
    total = total + number
  }
  return total
}
// Return the total of birds seen by week asked on weekNumber
func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
  var total = 0
  let indexWeekStart = (weekNumber - 1) * 7
  let indexWeekEnd = indexWeekStart + 6
 // let week = (indexWeekStart...indexWeekEnd) the range should be on the for...

  for week in birdsPerDay [indexWeekStart...indexWeekEnd] {
    total += week
  }
  return total
}

// Return the array fixed each 2 positions (+ 1 extra bird seen each 2 days)
func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
  var fixed = birdsPerDay
  for i in stride (from:0, to: fixed.count, by: 2) {
    fixed[i] += 1
  }
return fixed
}
