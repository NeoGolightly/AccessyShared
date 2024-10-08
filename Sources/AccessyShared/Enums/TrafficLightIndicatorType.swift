//
//  TrafficLightIndicatorType.swift
//  AccessySDK
//
//  Created by Neo Golightly on 07.10.24.
//

import Foundation

public enum TrafficLightIndicatorType: String, Codable, Sendable {
  case unknown = "unknown"
  case vibrationAndTone = "vibration_and_tone"
  case tone = "tone"
  case vibration = "vibration"
  case none = "none"
}
