//
//  Intersection.swift
//  AccessySDK
//
//  Created by Neo Golightly on 07.10.24.
//

import Foundation

public struct Intersection: Identifiable, Codable, Hashable, Equatable {
  public let id: UUID
  public let createdAt: Date
  public let updatedAt: Date?
  public let coordinate: Coordinate
  
  public init(id: UUID,
              createdAt: Date,
              updatedAt: Date?,
              coordinate: Coordinate) {
    self.id = id
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.coordinate = coordinate
  }
}
