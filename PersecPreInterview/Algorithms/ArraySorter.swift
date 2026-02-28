//
//  ArraySorter.swift
//  PersecPreInterview
//
//  Created by Pongsakorn Kaewsuwan on 28/2/2569 BE.
//

struct ArraySorter {
    
    static func sortCodes(_ codes: [String]) -> [String] {
        return codes.sorted { lhs, rhs in
            let left = parse(lhs)
            let right = parse(rhs)
            
            if left.prefix != right.prefix {
                return left.prefix < right.prefix
            }
            
            return left.numberTrailing < right.numberTrailing
        }
    }
    
    private static func parse(_ code: String) -> (prefix: String, numberTrailing: Int) {
        var prefix = ""
        var numberTrailing = ""
        
        for char in code {
            if char.isNumber {
                numberTrailing.append(char)
            } else if numberTrailing.isEmpty {
                prefix.append(char)
            } else {
                break
            }
        }
        
        return (prefix, Int(numberTrailing) ?? 0)
    }
}
