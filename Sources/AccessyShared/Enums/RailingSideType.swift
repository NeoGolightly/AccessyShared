//
//  File.swift
//  AccessyMainServer
//
//  Created by Neo Golightly on 06.10.24.
//

import Foundation

public enum RailingSideType: String, Codable, Sendable {
  case unknown = "unknown"
  case onlyLeft = "only_left"
  case onlyRight = "only_right"
  case bothSides = "both_sides"
  case middle = "middle"
  case middleAndLeft = "middle_and_left"
  case middleAndRight = "middle_and_right"
  case middleAndBothSides = "middle_and_both_sides"
}

