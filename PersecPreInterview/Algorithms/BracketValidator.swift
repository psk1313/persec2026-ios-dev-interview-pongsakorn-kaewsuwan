//
//  BracketValidator.swift
//  PersecPreInterview
//
//  Created by Pongsakorn Kaewsuwan on 28/2/2569 BE.
//

struct BracketValidator {
    
    static func isValid(_ input: String) -> Bool {
        guard !input.isEmpty,
              (input.count % 2) == .zero else {
            return false
        }
        
        var stack: [Character] = []
        let pairs: [Character: Character] = [")" : "(",
                                             "]" : "[",
                                             "}" : "{"]
        for char in input {
            if let expectedOpen = pairs[char] {
                guard stack.last == expectedOpen else { return false }
                stack.removeLast()
            } else {
                stack.append(char)
            }
        }
        return stack.isEmpty
    }
}
