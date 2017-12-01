import PlaygroundSupport

func sum(_ array: [Int], includeStep: Bool = false) -> Int {
    
    var step = 0
    if includeStep {
        step = array.count / 2
    }
    
    var total = 0
    
    for (i,_) in array.enumerated() {
        
        let current = array[i]
        if (i + step) < array.count {
            
            let next = array[i+step]
            if current == next {
                print("in \(current) == \(next)")
                total += current
            }
            else {
                print("in \(current) != \(next)")
            }
        }
        else {
            
            let circleIndex = (i+step) - array.count
            let afterStep = array[circleIndex]
            
            if afterStep == current {
                total += current
                print("out \(current) == \(afterStep)")
            }
            else {
                print("out \(current) != \(afterStep)")
            }
        }
    }
    return total
}

func sum(_ string: String, includeStep: Bool = false) -> Int {
    
    let intArray: [Int] = string.map({Int(String($0))}).flatMap({$0})
    return sum(intArray, includeStep: includeStep)
}

