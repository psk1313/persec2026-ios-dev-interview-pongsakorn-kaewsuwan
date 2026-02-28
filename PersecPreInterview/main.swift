//
//  main.swift
//  PersecPreInterview
//
//  Created by Pongsakorn Kaewsuwan on 28/2/2569 BE.
//

import Foundation

let bracketValidatorTestCase: [String] = ["()",
                          "([]]",
                          "([{}])",
                          "([[{}]]]",
                          ")",
                          "(]}])",
                          "([)]",
                          "{"]

for testCase in bracketValidatorTestCase {
    print("\(testCase) => \(BracketValidator.isValid(testCase))")
}
