//
//  TrafficLightTypeProperties.swift
//  AccessySDK
//
//  Created by Neo Golightly on 07.10.24.
//

import Foundation

public struct TrafficLightTypeProperties: InfrastrauctureTypeProperty {
  public var hasButton: Bool
  public var trafficLightIndicatorType: TrafficLightIndicatorType
  public init(hasButton: Bool,
              trafficLightIndicatorType: TrafficLightIndicatorType)
  {
    self.hasButton = hasButton
    self.trafficLightIndicatorType = trafficLightIndicatorType
  }
}
