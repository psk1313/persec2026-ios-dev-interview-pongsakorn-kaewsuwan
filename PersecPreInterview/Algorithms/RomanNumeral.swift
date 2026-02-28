//
//  RomanNumeral.swift
//  PersecPreInterview
//
//  Created by Pongsakorn Kaewsuwan on 28/2/2569 BE.
//

struct RomanNumeral {
    
    static func intToRoman(_ num: Int) -> String {
        let mapping: [(value: Int, roman: String)] = [
            (1000, "M"),
            (900, "CM"),
            (500, "D"),
            (400, "CD"),
            (100, "C"),
            (90, "XC"),
            (50, "L"),
            (40, "XL"),
            (10, "X"),
            (9, "IX"),
            (5, "V"),
            (4, "IV"),
            (1, "I")
        ]
        
        var number = num
        var result = ""
        
        for (value, roman) in mapping {
            while number >= value {
                result += roman
                number -= value
            }
        }
        
        return result
    }
    
    static func romanToInt(_ s: String) -> Int {
        let values: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        
        let characters = Array(s)
        var total = 0
        
        for i in 0..<characters.count {
            let current = values[characters[i]] ?? 0
            let isNext = (i + 1 < characters.count)
            let nextValue = isNext ? (values[characters[i + 1]] ?? 0) : 0
            
            if current < nextValue {
                total -= current
            } else {
                total += current
            }
        }
        
        return total
    }
}
