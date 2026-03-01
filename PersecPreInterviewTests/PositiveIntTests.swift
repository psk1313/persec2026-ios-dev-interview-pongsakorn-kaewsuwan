//
//  PositiveIntTests.swift
//  PersecPreInterviewTests
//
//  Created by Pongsakorn Kaewsuwan on 1/3/2569 BE.
//

import Testing
@testable import PersecPreInterview

struct PositiveIntTests {

    @Test
    func examples() {
        #expect(PositiveInt.sortDescending(3008) == 8300)
        #expect(PositiveInt.sortDescending(1989) == 9981)
        #expect(PositiveInt.sortDescending(2679) == 9762)
        #expect(PositiveInt.sortDescending(9163) == 9631)
    }
    
    @Test
    func zero() {
        #expect(PositiveInt.sortDescending(0) == 0)
    }
}
