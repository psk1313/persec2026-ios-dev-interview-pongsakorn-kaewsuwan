//
//  Tribonacci.swift
//  PersecPreInterview
//
//  Created by Pongsakorn Kaewsuwan on 28/2/2569 BE.
//

struct Tribonacci {
    
    static func tribonacci(_ initialValues: [Int], _ n: Int) -> [Int] {
        guard n > 0,
              !initialValues.isEmpty else {
            return []
        }
        
        var result = initialValues
        
        if n <= result.count {
            return Array(result.prefix(n))
        }
        
        while result.count < n {
            let count = result.count
            let sum = result.suffix(min(3, count)).reduce(0, +)
            result.append(sum)
        }
        
        return result
    }
}
