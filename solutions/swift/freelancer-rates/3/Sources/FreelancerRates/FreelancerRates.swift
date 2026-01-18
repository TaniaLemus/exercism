func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate * 8)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
  let monthlyRate = 22.0 * dailyRate
  let totalWithDiscount = monthlyRate - ((monthlyRate * discount) / 100)
  return totalWithDiscount.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dailyRate = dailyRateFrom(hourlyRate: hourlyRate) 
  let totalDiscountPerDay = (dailyRate * discount) / 100
  let workDaysByBudget = budget / (dailyRate - totalDiscountPerDay) 
  return workDaysByBudget.rounded(.down)
}
//submiting
