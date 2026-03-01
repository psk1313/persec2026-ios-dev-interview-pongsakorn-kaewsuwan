//
//  TribonacciTests.swift
//  PersecPreInterviewTests
//
//  Created by Pongsakorn Kaewsuwan on 1/3/2569 BE.
//

import Testing
@testable import PersecPreInterview

struct TribonacciTests {

    @Test
    func examples() {
        #expect(Tribonacci.tribonacci([1, 3, 5], 5) == [1, 3, 5, 9, 17])
        #expect(Tribonacci.tribonacci([2, 2, 2], 3) == [2, 2, 2])
        #expect(Tribonacci.tribonacci([10, 10, 10], 4) == [10, 10, 10, 30])
    }
    
    @Test
    func edgeCases() {
        #expect(Tribonacci.tribonacci([1], 0) == [])
        #expect(Tribonacci.tribonacci([1], 1) == [1])
        #expect(Tribonacci.tribonacci([1], 3) == [1, 1, 2])
        #expect(Tribonacci.tribonacci([], 5) == [])
    }
}
