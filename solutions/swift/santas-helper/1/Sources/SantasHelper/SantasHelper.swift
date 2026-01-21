func getName(_ item: (name: String, amount: Int)) -> String {
    item.name
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
    return (name: name, amount: amount)
}


func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) ->  [(name: String, amount: Int)] {
    var updateItems = items
    for i in 0..<updateItems.count {
      if updateItems[i].name == toy {
        updateItems[i].amount = amount
      }
    }
  return updateItems
  }


func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
  var newCategory: [(name: String, amount: Int, category: String)] = []
  
    for item in items {
       newCategory.append((name: item.name, amount: item.amount, category: category))
    }
   return newCategory
}
