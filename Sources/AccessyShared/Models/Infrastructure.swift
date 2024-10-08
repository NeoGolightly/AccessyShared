//
//  Infrastructure.swift
//  AccessySDK
//
//  Created by Neo Golightly on 07.10.24.
//

import Foundation

public struct Infrastructure: Identifiable, Codable, Equatable, Hashable {
  public var id: UUID
  public let createdAt: Date
  public let updatedAt: Date?
  //
  public var infrastructureType: InfrastructureType
  //
  public var intersections: [Intersection]
  public var displayCoordinates: [Coordinate]
  //
  public var distance: Double
  public var accessibilityLevel: Int
  //
  public var infos: InfrastructureInfos

  // Additional Infrastructure Type Properties
  public var pathTypeProperties: PathTypeProperties?
  public var sidewalkTypeProperties: SidewalkTypeProperties?
  public var staircaseTypeProperties: StaircaseTypeProperties?
  public var roadCrossingTypeProperties: RoadCrossingTypeProperties?
  public var trafficLightTypeProperties: TrafficLightTypeProperties?
  public var zebraCrossingTypeProperties: ZebraCrossingTypeProperties?
  public var trafficIslandTypeProperties: TrafficIslandTypeProperties?
  public var pedestrianZoneTypeProperties: PedestrianZoneTypeProperties?
  

  
  public init(id: UUID,
              createdAt: Date,
              updatedAt: Date?,
              infrastructureType: InfrastructureType,
              intersections: [Intersection],
              displayCoordinates: [Coordinate],
              distance: Double,
              accessibilityLevel: Int,
              infos: InfrastructureInfos,
              pathTypeProperties: PathTypeProperties? = nil,
              sidewalkTypeProperties: SidewalkTypeProperties? = nil,
              staircaseTypeProperties: StaircaseTypeProperties? = nil,
              roadCrossingTypeProperties: RoadCrossingTypeProperties? = nil,
              trafficLightTypeProperties: TrafficLightTypeProperties? = nil,
              zebraCrossingTypeProperties: ZebraCrossingTypeProperties? = nil,
              trafficIslandTypeProperties: TrafficIslandTypeProperties? = nil,
              pedestrianZoneTypeProperties: PedestrianZoneTypeProperties? = nil) {
    self.id = id
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.infrastructureType = infrastructureType
    self.intersections = intersections
    self.displayCoordinates = displayCoordinates
    self.distance = distance
    self.accessibilityLevel = accessibilityLevel
    self.infos = infos
    self.pathTypeProperties = pathTypeProperties
    self.sidewalkTypeProperties = sidewalkTypeProperties
    self.staircaseTypeProperties = staircaseTypeProperties
    self.roadCrossingTypeProperties = roadCrossingTypeProperties
    self.trafficLightTypeProperties = trafficLightTypeProperties
    self.zebraCrossingTypeProperties = zebraCrossingTypeProperties
    self.trafficIslandTypeProperties = trafficIslandTypeProperties
    self.pedestrianZoneTypeProperties = pedestrianZoneTypeProperties
  }
}


public struct InfrastructureInfos: Codable, Equatable, Hashable {
  public let infoText: String
  public let warningText: String
  public let temporaryClose: Bool
  public let closedTillDate: Date?
  public let shouldUseCompassHelper: Bool
  
  public init(infoText: String = "",
              warningText: String = "",
              temporaryClose: Bool = false,
              closedTillDate: Date? = nil,
              shouldUseCompassHelper: Bool = false)
  {
    self.infoText = infoText
    self.warningText = warningText
    self.temporaryClose = temporaryClose
    self.closedTillDate = closedTillDate
    self.shouldUseCompassHelper = shouldUseCompassHelper
  }
}
