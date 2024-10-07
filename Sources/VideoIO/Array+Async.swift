//
//  File.swift
//  VideoIO
//
//  Created by George Kye on 2024-10-07.
//

import Foundation
extension Array {
  func filterAsync(_ isIncluded: (Element) async throws -> Bool) async rethrows -> [Element] {
    var result: [Element] = []
    for element in self {
      if try await isIncluded(element) {
        result.append(element)
      }
    }
    return result
  }
}
