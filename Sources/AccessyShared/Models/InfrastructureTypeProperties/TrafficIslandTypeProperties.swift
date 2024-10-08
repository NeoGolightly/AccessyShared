//
//  TrafficIslandTypeProperties.swift
//  AccessySDK
//
//  Created by Neo Golightly on 07.10.24.
//

import Foundation

public struct TrafficIslandTypeProperties: InfrastrauctureTypeProperty {
  public var trafficVolumeType: TrafficVolumeType
  public var islandCount: UInt
  public init(trafficVolumeType: TrafficVolumeType,
              islandCount: UInt) {
    self.trafficVolumeType = trafficVolumeType
    self.islandCount = islandCount
  }
}
