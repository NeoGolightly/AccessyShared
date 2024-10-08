//
//  TrafficVolumeType.swift
//  AccessySDK
//
//  Created by Neo Golightly on 07.10.24.
//

import Foundation

public enum TrafficVolumeType: String, Codable, Sendable {
  case unknown = "unknown"
  case reducedTrafficArea = "reduced_traffic_area"
  case standard = "standard"
  case busyRoad = "busy_road"
  case veryBusyRoad = "very_busy_road"
}
