// Get name from item (tuple) - U need only to consult an index [i]
func getName(_ item: (name: String, amount: Int)) -> String {
    item.name
}
// Create a toy. The tutple is name and ammount. The values are after -> (name....)
func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
    return (name: name, amount: amount)
}

// Updating quantity. Tuple items (name, amount) the values to update is toy and amount. You use append only for 1 and multiple items use for ... loop.
func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) ->  [(name: String, amount: Int)] {
    var updateItems = items
    for i in 0..<updateItems.count {
      if updateItems[i].name == toy {
        updateItems[i].amount = amount
      }
    }
  return updateItems
  }

// Adding category (campo). Tuple items (name, amount) the values to add is category. You will receibe ->(name, amount, category) Create a new tuple to update handle the existing items and adding a category, empty tuple [] you will receive values on the for loop
func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
  var newCategory: [(name: String, amount: Int, category: String)] = []
  
    for item in items {
       newCategory.append((name: item.name, amount: item.amount, category: category))
    }
   return newCategory
}
