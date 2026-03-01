//
//  AutocompleteTests.swift
//  PersecPreInterviewTests
//
//  Created by Pongsakorn Kaewsuwan on 1/3/2569 BE.
//

import Testing
@testable import PersecPreInterview

struct AutocompleteTests {

    @Test
    func rankByPosition_shouldPreferEarlierMatch() {
        let items = ["Mother", "Think", "Worthy", "Apple", "Android"]
        let result = Autocomplete.autocomplete("th", items: items, maxResult: 1)
        #expect(result == ["Think"])
    }
    
    @Test
    func maxResultLimit() {
        let items = ["Mother", "Think", "Worthy", "Apple", "Android"]
        let result = Autocomplete.autocomplete("th", items: items, maxResult: 2)
        #expect(result.count == 2)
    }
    
    @Test
    func emptyKeyword_orZeroMax_shouldReturnEmpty() {
        let items = ["Mother", "Think", "Worthy", "Apple", "Android"]
        #expect(Autocomplete.autocomplete("", items: items, maxResult: 2) == [])
        #expect(Autocomplete.autocomplete("th", items: items, maxResult: 0) == [])
    }
}
