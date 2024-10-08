//
//  RoadCrossingTypeProperties.swift
//  AccessySDK
//
//  Created by Neo Golightly on 07.10.24.
//

import Foundation

public struct RoadCrossingTypeProperties: InfrastrauctureTypeProperty {
  public var trafficVolumeType: TrafficVolumeType
  public init(trafficVolumeType: TrafficVolumeType) {
    self.trafficVolumeType = trafficVolumeType
  }
}
