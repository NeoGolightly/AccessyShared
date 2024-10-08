//
//  StaircaseTypeProperties.swift
//  AccessySDK
//
//  Created by Neo Golightly on 07.10.24.
//

import Foundation

public struct StaircaseTypeProperties: InfrastrauctureTypeProperty {
  public let stairsCount: UInt
  public let staircaseDirectionType: StaircaseDirectionType
  public let hasRailing: Bool
  public let railingSidesType: RailingSideType?
  public init(stairsCount: UInt,
              staircaseDirectionType: StaircaseDirectionType,
              hasRailing: Bool,
              railingSidesType: RailingSideType?) {
    self.stairsCount = stairsCount
    self.staircaseDirectionType = staircaseDirectionType
    self.hasRailing = hasRailing
    self.railingSidesType = railingSidesType
  }
}
