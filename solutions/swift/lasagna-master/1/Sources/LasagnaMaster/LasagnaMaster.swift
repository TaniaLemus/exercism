// Obtain remaining minutes betewwn expectedMinutes = 40 and time used(elapsedMinutes)
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
  expectedMinutesInOven - elapsedMinutes
}

// Give total of minutes if it takes 2 mins x layer in an array. Use Variadic string parameter
func preparationTimeInMinutes(layers: String...) -> Int {
  layers.count * 2
}

//Look quantities for noodles and Sauce. What to do: Find "something" in the array and counted. Then for noddles * 3 and sauces * 0.2
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
    let noodles = layers.filter { $0 == "noodles" }.count * 3
    let sauce: Double = Double(layers.filter { $0 == "sauce" }.count ) * 0.2
    return (noodles: noodles, sauce: sauce)
}
// Define 'toOz' convert oz to lt. use Inout tuple
func toOz(_ amount: inout (noodles: Int, sauce: Double)) {
    amount.sauce *= 33.814
}
// Nested func. Asked to create 5 func to nest
func redWine(layers: String...) -> Bool {
    func mozzarellaCount() -> Int {
        layers.filter { $0 == "mozzarella" }.count
    }

    func ricottaCount() -> Int {
        layers.filter { $0 == "ricotta" }.count
    }

    func bechamelCount() -> Int {
        layers.filter { $0 == "béchamel" }.count
    }

    func sauceCount() -> Int {
        layers.filter { $0 == "sauce" }.count
    }

    func meatCount() -> Int {
        layers.filter { $0 == "meat" }.count
    }

    let whiteLayers = mozzarellaCount() + ricottaCount() + bechamelCount()
    let redLayers = sauceCount() + meatCount()

    // "Serve white wine if there is more white than red; red otherwise"
    return redLayers >= whiteLayers
}



