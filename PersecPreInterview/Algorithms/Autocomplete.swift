//
//  Autocomplete.swift
//  PersecPreInterview
//
//  Created by Pongsakorn Kaewsuwan on 28/2/2569 BE.
//

import Foundation

struct Autocomplete {

    static func autocomplete(_ keywords: String,
                             items: [String],
                             maxResult: Int) -> [String] {

        guard !keywords.isEmpty,
              maxResult > 0 else {
            return []
        }

        var filtered: [(String, Int)] = []
        let keywordsLower = keywords.lowercased()

        for item in items {
            let lower = item.lowercased()
            guard let range = lower.range(of: keywordsLower) else { continue }

            let position = lower.distance(from: lower.startIndex, to: range.lowerBound)
            filtered.append((item, position))
        }
        
        let sorted = filtered.sorted { $0.1 < $1.1 }
                    .prefix(maxResult)
                    .map { $0.0 }
        
        return sorted
    }
}
