import PlaygroundSupport


// First part
func calculateDiff(_ input: [[Int]]) -> Int {
    
    var result = 0
    for row in input {
        
        let sorted = row.sorted()
        
        let first = abs(sorted.first!)
        let last = abs(sorted.last!)
        let diff = abs(last - first)
        result += diff
    }
    
    return result
}

// Second part
func calculateDivision(_ input: [[Int]]) -> Int {
    
    var result = 0
    
    for row in input {
        
        var found = false
        for i in row {
            for j in row {
                
                if i != j {
                    
                    if (i % j) == 0 {
                        result += (i / j)
                        print("\(i) / \(j)")
                        found = true
                        break
                    }
                    else if (j % i) == 0 {
                        result += (j / i)
                        print("\(j) / \(i)")
                        found = true
                        break
                    }
                }
            }
            if found {
                break
            }
        }
        if found {
            continue
        }
    }
    
    return result
}

