//
//  InfrastructureType.swift
//  AccessySDK
//
//  Created by Neo Golightly on 07.10.24.
//

import Foundation

public enum InfrastructureType: String, Codable, Sendable {
  case sidewalk = "sidewalk"
  case pedestrianZone = "pedestrian_zone"
  case staircase = "staircase"
  case zebraCrossing = "zebra_crossing"
  case roadCrossing = "road_crossing"
  case path = "path"
  case trafficLight = "traffic_light"
  case trafficIsland = "traffic_island"
}
