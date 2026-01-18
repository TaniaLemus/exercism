func getCard(at index: Int, from stack: [Int]) -> Int {
    return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    var newStack = stack
    if index >= 0 && index < newStack.count {
        newStack[index] = newCard
    }
    return newStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var newStack = stack
    newStack.append(newCard)
    return newStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    var newStack = stack
    if index >= 0 && index < newStack.count {
        newStack.remove(at: index)
    }
    return newStack
}

func insert(_ newCard: Int, at index: Int, from stack: [Int]) -> [Int] {
    var newStack = stack
    if index >= 0 && index <= newStack.count {
        newStack.insert(newCard, at: index)
    }
    return newStack
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    return stack.count == size
} 
//submiting
