//
//  RomanNumeralTests.swift
//  PersecPreInterviewTests
//
//  Created by Pongsakorn Kaewsuwan on 1/3/2569 BE.
//

import Testing
@testable import PersecPreInterview

struct RomanNumeralTests {

    @Test
    func intToRoman_examples() {
        #expect(RomanNumeral.intToRoman(1989) == "MCMLXXXIX")
        #expect(RomanNumeral.intToRoman(2000) == "MM")
        #expect(RomanNumeral.intToRoman(68) == "LXVIII")
        #expect(RomanNumeral.intToRoman(109) == "CIX")
    }
    
    @Test
    func romanToInt_examples() {
        #expect(RomanNumeral.romanToInt("MCMLXXXIX") == 1989)
        #expect(RomanNumeral.romanToInt("MM") == 2000)
        #expect(RomanNumeral.romanToInt("LXVIII") == 68)
        #expect(RomanNumeral.romanToInt("CIX") == 109)
    }
}
