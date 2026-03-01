//
//  BracketValidatorTests.swift
//  PersecPreInterviewTests
//
//  Created by Pongsakorn Kaewsuwan on 1/3/2569 BE.
//

import Testing
@testable import PersecPreInterview

struct BracketValidatorTests {

    @Test
    func validCases() {
        #expect(BracketValidator.isValid("()") == true)
        #expect(BracketValidator.isValid("([])") == true)
        #expect(BracketValidator.isValid("([{}])") == true)
    }
    
    @Test
    func invalidCases() {
        #expect(BracketValidator.isValid("(]") == false)
        #expect(BracketValidator.isValid("([)]") == false)
        #expect(BracketValidator.isValid("(((") == false)
        #expect(BracketValidator.isValid("())") == false)
    }
}
