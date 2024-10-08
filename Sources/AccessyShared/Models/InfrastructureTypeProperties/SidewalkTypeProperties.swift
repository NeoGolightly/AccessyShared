//
//  SidewalkTypeProperties.swift
//  AccessySDK
//
//  Created by Neo Golightly on 07.10.24.
//

import Foundation

public struct SidewalkTypeProperties: InfrastrauctureTypeProperty {
  public var surfaceType: SurfaceType
  public init(surfaceType: SurfaceType) {
    self.surfaceType = surfaceType
  }
}
