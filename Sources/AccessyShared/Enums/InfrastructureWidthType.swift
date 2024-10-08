//
//  InfrastructureWidthType.swift
//  AccessyMainServer
//
//  Created by Neo Golightly on 06.10.24.
//

import Foundation

public enum InfrastructureWidthType: String, Codable, Sendable {
  /// Big sidewalk
  case broad = "broad"
  /// Standard sidewalk
  case standard = "standard"
  /// Wheelchair accessible
  case narrow = "narrow"
  /// A single person could walk
  case veryNarrow = "very_narrow"
  /// Not accessible for blind people or people in wheelchairs
  case notSuitableForBlindPeople = "not_suitable_for_blind_people"
}
