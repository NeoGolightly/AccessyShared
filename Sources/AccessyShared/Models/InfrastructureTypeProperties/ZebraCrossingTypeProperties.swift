//
//  ZebraCrossingTypeProperties.swift
//  AccessySDK
//
//  Created by Neo Golightly on 07.10.24.
//

import Foundation

public struct ZebraCrossingTypeProperties: InfrastrauctureTypeProperty {
  public var trafficVolumeType: TrafficVolumeType
  public var hasIslands: Bool
  public var islandCount: UInt
  public init(trafficVolumeType: TrafficVolumeType,
              hasIslands: Bool,
              islandCount: UInt) {
    self.trafficVolumeType = trafficVolumeType
    self.hasIslands = hasIslands
    self.islandCount = islandCount
  }
}
