// If diameter and/or slices are nil = return nil. Validate is greater than diameter > 0 and slices > 1. Get the area of slice. We use guard to avoid code lines with if...{} if{}... else...
func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    // Valida que no esten nulos. Verify nil
    guard let diameter = diameter, let slices = slices else { return nil }
    // Validar que sean mayores a 0 (no negativos). Verify >0 or >1
    guard diameter >= 0, slices >= 1 else { return nil }
    //Obtener el area de la rebanada (slice). Area.
    let radio = diameter / 2
    let area = Double.pi * ( radio * radio )
    return area / Double(slices)
}






func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
    
    let areaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let areaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesA))
    
    // Apply rules:
    // 1) If one area is Double and the other is nil, the Double wins.
    // 2) If both are Double, compare values; if equal, neither is bigger.
    // 3) If both are nil, neither is bigger.
    switch (areaA, areaB) {
    case (nil, nil):
        return "Neither slice is bigger"
    case let (a?, b?):
        if a > b { return "Slice A is bigger" }
        if b > a { return "Slice B is bigger" }
        return "Neither slice is bigger"
   
    case (_?, nil):
        return "Slice A is bigger"
    case (nil, _?):
        return "Slice B is bigger"
    }
}


 
