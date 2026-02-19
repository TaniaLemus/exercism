// Define the Size struct. Using a struct is like if you make a copy of value type.
struct Size {
    var width = 80
    var height = 60
    
    mutating func resize(newWidth: Int, newHeight: Int) {
        width = newWidth
        height = newHeight
    }
}
//  Define the Position struct. Mutating allows to modify self struct. Self is the actual instance.
struct Position {
    var x = 0
    var y = 0
    
    mutating func moveTo(newX: Int, newY: Int){
        x = newX
        y = newY
    }
}
// Define the Window class. Class is the reference type, same reference.
class Window {
    var title = "New Window"
    let screenSize = Size(width: 800, height: 600)
    var size = Size()
    var position = Position()
    var contents: String?
    init() { }
    
    init(title: String,
         contents: String?,
         size: Size = Size(),
         position: Position = Position()) {

        self.title = title
        self.contents = contents
        self.size = Size()
        self.position = Position()

        self.resize(to: size)
        self.move(to: position)
    }
    
    func resize(to newSize: Size) {
        let minValue = 1
        let maxHeight = screenSize.height - position.y
        let maxWidth = screenSize.width - position.x
        /* this is the same as finalValue = min(max(originalvalue, min), max)
         if newWidth < minValue { size.width = minWidth }
         if newWidth > maxWidth { size.width = maxWidth }
         if newHeight < minValue { size.height = minHeight }
         if newHeight > maxHeight { size.height = maxHeight } */
        size.width = min(max(newSize.width, minValue), maxWidth)
        size.height = min(max(newSize.height, minValue), maxHeight)
    }
    func move(to newPosition: Position) {
        let minValue = 0
        let maxX = screenSize.width - size.width
        let maxY = screenSize.height - size.height
        position.x = min(max(newPosition.x, minValue), maxX)
        position.y = min(max(newPosition.y, minValue), maxY)
    }
    func update(title: String){
        self.title = title
    }
    func update(text: String?){
        self.contents = text
    }
    func display() -> String {
        //return "\(title)\n Position: (\(position)), Size (\(size))\n \(contents ?? "Empty")\n"
        
        
        let contentText = contents ?? "[This window intentionally left blank]"
        
         
         return "\(title)\n" +
                "Position: (\(position.x), \(position.y)), " +
                "Size: (\(size.width) x \(size.height))\n" +
                "\(contentText)\n"
         
    }
}

