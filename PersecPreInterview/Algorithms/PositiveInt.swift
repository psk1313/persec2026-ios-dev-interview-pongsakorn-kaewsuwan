//
//  PositiveInt.swift
//  PersecPreInterview
//
//  Created by Pongsakorn Kaewsuwan on 28/2/2569 BE.
//

struct PositiveInt {
    
    static func sortDescending(_ number: Int) -> Int {
        guard number >= 0 else { return 0 }
        let sortedString = String(number).sorted(by: >)
        return Int(String(sortedString)) ?? 0
    }
}
