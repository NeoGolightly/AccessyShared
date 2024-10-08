//
//  PathTypeProperties.swift
//  AccessySDK
//
//  Created by Neo Golightly on 07.10.24.
//

import Foundation

public struct PathTypeProperties: InfrastrauctureTypeProperty {
  public var surfaceType: SurfaceType
  public init(surfaceType: SurfaceType) {
    self.surfaceType = surfaceType
  }
}
