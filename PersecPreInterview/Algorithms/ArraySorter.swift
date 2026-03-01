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
            
            return left.numericSuffix < right.numericSuffix
        }
    }
    
    private static func parse(_ code: String) -> (prefix: String, numericSuffix: Int) {
        var prefix = ""
        var numericSuffix = ""
        
        for char in code {
            if char.isNumber {
                numericSuffix.append(char)
            } else if numericSuffix.isEmpty {
                prefix.append(char)
            } else {
                break
            }
        }
        
        return (prefix, Int(numericSuffix) ?? 0)
    }
}
