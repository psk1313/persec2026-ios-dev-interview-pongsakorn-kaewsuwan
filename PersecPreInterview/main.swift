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
