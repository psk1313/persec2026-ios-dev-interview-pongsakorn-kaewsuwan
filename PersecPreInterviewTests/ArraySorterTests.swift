//
//  ArraySorterTests.swift
//  PersecPreInterviewTests
//
//  Created by Pongsakorn Kaewsuwan on 1/3/2569 BE.
//

import Testing
@testable import PersecPreInterview

struct ArraySorterTests {

    @Test
    func sortByPrefixThenNumericSuffix() {
        let items = ["TH19", "SG20", "TH2", "SG1"]
        let result = ArraySorter.sortCodes(items)
        #expect(result == ["SG1", "SG20", "TH2", "TH19"])
    }
}
