//
//  SurfaceType.swift
//  AccessyMainServer
//
//  Created by Neo Golightly on 06.10.24.
//

import Foundation

public enum SurfaceType: String, Codable, Sendable {
  case unknown = "unknown"
  case even = "even"
  case uneven = "uneven"
  case rough = "rough"
}
