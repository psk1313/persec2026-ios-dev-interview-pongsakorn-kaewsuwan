//
//  main.swift
//  PersecPreInterview
//
//  Created by Pongsakorn Kaewsuwan on 28/2/2569 BE.
//

/// ข้อที่ 1
let bracketValidatorTestCase: [String] = ["()",
                          "([]]",
                          "([{}])",
                          "([[{}]]]",
                          ")",
                          "(]}])",
                          "([)]",
                          "{"]

for testCase in bracketValidatorTestCase {
    print("\(testCase) ==> \(BracketValidator.isValid(testCase))")
}


/// ข้อที่ 2
let arraySorterTestCase: [[String]] = [["TH19", "SG20" , "TH2"],
                                       ["TH10", "TH3Netflix" , "TH1", "TH7"]]

for testCase in arraySorterTestCase {
    print("\(testCase) ==> \(ArraySorter.sortCodes(testCase))")
}

/// ข้อที่ 3
print(Autocomplete.autocomplete("th",
                                items: ["Mother", "Think", "Worthy", "Apple", "Android"],
                                maxResult: 1))

/// ข้อที่ 4
let intToRomanTestCase: [Int] = [1989, 2000, 68, 109]
let romanToIntTestCase: [String] = ["MCMLXXXIX", "MM", "LXVIII", "CIX"]

for testCase in intToRomanTestCase {
    print("\(testCase) ==> \(RomanNumeral.intToRoman(testCase))")
}

for testCase in romanToIntTestCase {
    print("\(testCase) ==> \(RomanNumeral.romanToInt(testCase))")
}

/// ข้อที่ 5
let positiveIntTestCase: [Int] = [3008, 1989, 2679, 9163]

for testCase in positiveIntTestCase {
    print("\(testCase) ==> \(PositiveInt.sortDescending(testCase))")
}

let tribonacciTestCase: [([Int], Int)] = [([1, 3, 5], 5),
                                          ([2, 2, 2], 3),
                                          ([10, 10, 10], 4)]
for testCase in tribonacciTestCase {
    print("\(testCase) ==> \(Tribonacci.tribonacci(testCase.0, testCase.1))")
}
