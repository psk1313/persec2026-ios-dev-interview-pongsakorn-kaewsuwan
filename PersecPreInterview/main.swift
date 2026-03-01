//
//  main.swift
//  PersecPreInterview
//
//  Created by Pongsakorn Kaewsuwan on 28/2/2569 BE.
//

func printSection(_ title: String) {
    print("")
    print("======== \(title) ========")
}

/// ข้อที่ 1
printSection("BracketValidator")
let bracketValidatorTestCase: [String] = ["()",
                          "([]]",
                          "([{}])",
                          "([[{}]]]",
                          ")",
                          "(]}])",
                          "([)]",
                          "{"]

for testCase in bracketValidatorTestCase {
    print("BracketValidator \(testCase) ==> \(BracketValidator.isValid(testCase))")
}


/// ข้อที่ 2
printSection("ArraySorter")
let arraySorterTestCase: [[String]] = [["TH19", "SG20" , "TH2"],
                                       ["TH10", "TH3Netflix" , "TH1", "TH7"]]

for testCase in arraySorterTestCase {
    print("ArraySorter \(testCase) ==> \(ArraySorter.sortCodes(testCase))")
}

/// ข้อที่ 3
printSection("Autocomplete")
print("Autocomplete th ==>", Autocomplete.autocomplete("th",
                                items: ["Mother", "Think", "Worthy", "Apple", "Android"],
                                maxResult: 1))

/// ข้อที่ 4
printSection("RomanNumeral")
let intToRomanTestCase: [Int] = [1989, 2000, 68, 109]
let romanToIntTestCase: [String] = ["MCMLXXXIX", "MM", "LXVIII", "CIX"]

for testCase in intToRomanTestCase {
    print("IntToRomanTestCase \(testCase) ==> \(RomanNumeral.intToRoman(testCase))")
}

for testCase in romanToIntTestCase {
    print("RomanToIntTestCase \(testCase) ==> \(RomanNumeral.romanToInt(testCase))")
}

/// ข้อที่ 5
printSection("PositiveInt")
let positiveIntTestCase: [Int] = [3008, 1989, 2679, 9163]

for testCase in positiveIntTestCase {
    print("PositiveInt \(testCase) ==> \(PositiveInt.sortDescending(testCase))")
}

/// ข้อที่ 6
printSection("Tribonacci")
let tribonacciTestCase: [([Int], Int)] = [([1, 3, 5], 5),
                                          ([2, 2, 2], 3),
                                          ([10, 10, 10], 4)]
for testCase in tribonacciTestCase {
    print("Tribonacci \(testCase) ==> \(Tribonacci.tribonacci(testCase.0, testCase.1))")
}
