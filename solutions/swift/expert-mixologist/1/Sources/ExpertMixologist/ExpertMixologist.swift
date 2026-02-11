// How long it takes to make an order. Sum total time of the drinks in array.
    // Expected  // returns 4.5
func timeToPrepare(drinks: [String]) -> Double {
  var total: Double = 0.0
  for drink in drinks {
    switch drink {
    case "beer", "soda", "water": total += 0.5
    case "shot": total += 1.0
    case "mixed drink": total += 1.5
    case "fancy drink": total += 2.5
    case "frozen drink": total += 3.0
    default: break
    }
  }
  return total
}
// Lime wedge suply. Use a while to break until the wedges needed.
    // Expected  // returns 4
func makeWedges(needed: Int, limes: [String]) -> Int {
    var wedgesCut = 0
    var limesCount = 0
    
    for lime in limes {
        if wedgesCut >= needed { break }
        
        switch lime {
        case "small": wedgesCut += 6
        case "medium": wedgesCut += 8
        case "large": wedgesCut += 10
        default: break
        }
        limesCount += 1
    }
    return limesCount
}
// Finish up your shift. Count orders you can make before your shift is done
    // Expected // returns [["beer", "beer", "water"], ["mixed drink", "frozen drink"]]
func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    var minutesRemaining = Double(minutesLeft)
    var orders = remainingOrders
    
    while minutesRemaining > 0 && !orders.isEmpty {
        let firstOrder = orders.removeFirst()
        minutesRemaining -= timeToPrepare(drinks: firstOrder)
    }
    return orders
}

// Count and return soda and beer total count and first and last time ordered.
    // Expected // returns (beer: (first "10:01", last "10:22", total 3), soda: (first "10:09", last "10:09", total 1))
func orderTracker(orders: [(drink: String, time: String)]) -> (
    beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
    let beers = orders.filter { $0.drink == "beer" }
    let sodas = orders.filter { $0.drink == "soda" }
    
    var beerResult: (String, String, Int)? = nil
    var sodaResult: (String, String, Int)? = nil
    
    if !beers.isEmpty {
        beerResult = (beers.first!.time, beers.last!.time, beers.count)
    }
    if !sodas.isEmpty {
        sodaResult = (sodas.first!.time, sodas.last!.time, sodas.count)
    }
    return (beer: beerResult, soda: sodaResult)
}
