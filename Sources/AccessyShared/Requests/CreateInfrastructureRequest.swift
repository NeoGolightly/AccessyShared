//
//  CreateInfrastructureRequest.swift
//  AccessySDK
//
//  Created by Neo Golightly on 07.10.24.
//

import Foundation

public struct CreateInfrastructureRequest: Codable {
  public let startCoordinate: Coordinate?
  public let endCoordinate: Coordinate?
  public let startIntersectionID: UUID?
  public let endIntersectionID: UUID?
  public let infrastructureType: InfrastructureType
  public let infos: InfrastructureInfos
  public let displayCoordinates: [Coordinate]
  
  // Additional Infrastructure Type Properties
  public let pathTypeProperties: PathTypeProperties?
  public let sidewalkTypeProperties: SidewalkTypeProperties?
  public let staircaseTypeProperties: StaircaseTypeProperties?
  public let roadCrossingTypeProperties: RoadCrossingTypeProperties?
  public let trafficLightTypeProperties: TrafficLightTypeProperties?
  public let zebraCrossingTypeProperties: ZebraCrossingTypeProperties?
  public let trafficIslandTypeProperties: TrafficIslandTypeProperties?
  public let pedestrianZoneTypeProperties: PedestrianZoneTypeProperties?
  
  //
  public let creationType: CreationType
  
  public enum CreationType: String, Codable {
    case newInfrastructure
    case newInfrastructureWithStartIntersection
    case newInfrastructureWithStartAndEndIntersection
  }
  
  private init(startCoordinate: Coordinate?,
               endCoordinate: Coordinate?,
               startIntersectionID: UUID?,
               endIntersectionID: UUID?,
               infrastructureType: InfrastructureType,
               infos: InfrastructureInfos,
               displayCoordinates: [Coordinate],
               pathTypeProperties: PathTypeProperties? = nil,
               sidewalkTypeProperties: SidewalkTypeProperties? = nil,
               staircaseTypeProperties: StaircaseTypeProperties? = nil,
               roadCrossingTypeProperties: RoadCrossingTypeProperties? = nil,
               trafficLightTypeProperties: TrafficLightTypeProperties? = nil,
               zebraCrossingTypeProperties: ZebraCrossingTypeProperties? = nil,
               trafficIslandTypeProperties: TrafficIslandTypeProperties? = nil,
               pedestrianZoneTypeProperties: PedestrianZoneTypeProperties? = nil,
               creationType: CreationType)
  {
    self.startCoordinate = startCoordinate
    self.endCoordinate = endCoordinate
    self.startIntersectionID = startIntersectionID
    self.endIntersectionID = endIntersectionID
    self.infrastructureType = infrastructureType
    self.infos = infos
    self.displayCoordinates = displayCoordinates
    self.pathTypeProperties = pathTypeProperties
    self.sidewalkTypeProperties = sidewalkTypeProperties
    self.staircaseTypeProperties = staircaseTypeProperties
    self.roadCrossingTypeProperties = roadCrossingTypeProperties
    self.trafficLightTypeProperties = trafficLightTypeProperties
    self.zebraCrossingTypeProperties = zebraCrossingTypeProperties
    self.trafficIslandTypeProperties = trafficIslandTypeProperties
    self.pedestrianZoneTypeProperties = pedestrianZoneTypeProperties
    self.creationType = creationType
  }
  
  public init(startCoordinate: Coordinate,
              endCoordinate: Coordinate,
              infrastructureType: InfrastructureType,
              infos: InfrastructureInfos,
              displayCoordinates: [Coordinate],
              pathTypeProperties: PathTypeProperties? = nil,
              sidewalkTypeProperties: SidewalkTypeProperties? = nil,
              staircaseTypeProperties: StaircaseTypeProperties? = nil,
              roadCrossingTypeProperties: RoadCrossingTypeProperties? = nil,
              trafficLightTypeProperties: TrafficLightTypeProperties? = nil,
              zebraCrossingTypeProperties: ZebraCrossingTypeProperties? = nil,
              trafficIslandTypeProperties: TrafficIslandTypeProperties? = nil,
              pedestrianZoneTypeProperties: PedestrianZoneTypeProperties? = nil)
  {
    self.init(startCoordinate: startCoordinate,
              endCoordinate: endCoordinate,
              startIntersectionID: nil,
              endIntersectionID: nil,
              infrastructureType: infrastructureType,
              infos: infos,
              displayCoordinates: displayCoordinates,
              pathTypeProperties: pathTypeProperties,
              sidewalkTypeProperties: sidewalkTypeProperties,
              staircaseTypeProperties: staircaseTypeProperties,
              roadCrossingTypeProperties: roadCrossingTypeProperties,
              trafficLightTypeProperties: trafficLightTypeProperties,
              zebraCrossingTypeProperties: zebraCrossingTypeProperties,
              trafficIslandTypeProperties: trafficIslandTypeProperties,
              pedestrianZoneTypeProperties: pedestrianZoneTypeProperties,
              creationType: .newInfrastructure)
  }
  
  public init(startIntersectionID: UUID,
              endCoordinate: Coordinate,
              infrastructureType: InfrastructureType,
              infos: InfrastructureInfos,
              displayCoordinates: [Coordinate],
              pathTypeProperties: PathTypeProperties? = nil,
              sidewalkTypeProperties: SidewalkTypeProperties? = nil,
              staircaseTypeProperties: StaircaseTypeProperties? = nil,
              roadCrossingTypeProperties: RoadCrossingTypeProperties? = nil,
              trafficLightTypeProperties: TrafficLightTypeProperties? = nil,
              zebraCrossingTypeProperties: ZebraCrossingTypeProperties? = nil,
              trafficIslandTypeProperties: TrafficIslandTypeProperties? = nil,
              pedestrianZoneTypeProperties: PedestrianZoneTypeProperties? = nil)
  {
    self.init(startCoordinate: nil,
              endCoordinate: endCoordinate,
              startIntersectionID: startIntersectionID,
              endIntersectionID: nil,
              infrastructureType: infrastructureType,
              infos: infos,
              displayCoordinates: displayCoordinates,
              pathTypeProperties: pathTypeProperties,
              sidewalkTypeProperties: sidewalkTypeProperties,
              staircaseTypeProperties: staircaseTypeProperties,
              roadCrossingTypeProperties: roadCrossingTypeProperties,
              trafficLightTypeProperties: trafficLightTypeProperties,
              zebraCrossingTypeProperties: zebraCrossingTypeProperties,
              trafficIslandTypeProperties: trafficIslandTypeProperties,
              pedestrianZoneTypeProperties: pedestrianZoneTypeProperties,
              creationType: .newInfrastructureWithStartIntersection)
  }
  
  public init(startIntersectionID: UUID,
              endIntersectionID: UUID,
              infrastructureType: InfrastructureType,
              infos: InfrastructureInfos,
              displayCoordinates: [Coordinate],
              pathTypeProperties: PathTypeProperties? = nil,
              sidewalkTypeProperties: SidewalkTypeProperties? = nil,
              staircaseTypeProperties: StaircaseTypeProperties? = nil,
              roadCrossingTypeProperties: RoadCrossingTypeProperties? = nil,
              trafficLightTypeProperties: TrafficLightTypeProperties? = nil,
              zebraCrossingTypeProperties: ZebraCrossingTypeProperties? = nil,
              trafficIslandTypeProperties: TrafficIslandTypeProperties? = nil,
              pedestrianZoneTypeProperties: PedestrianZoneTypeProperties? = nil)
  {
    self.init(startCoordinate: nil,
              endCoordinate: nil,
              startIntersectionID: startIntersectionID,
              endIntersectionID: endIntersectionID,
              infrastructureType: infrastructureType,
              infos: infos,
              displayCoordinates: displayCoordinates,
              pathTypeProperties: pathTypeProperties,
              sidewalkTypeProperties: sidewalkTypeProperties,
              staircaseTypeProperties: staircaseTypeProperties,
              roadCrossingTypeProperties: roadCrossingTypeProperties,
              trafficLightTypeProperties: trafficLightTypeProperties,
              zebraCrossingTypeProperties: zebraCrossingTypeProperties,
              trafficIslandTypeProperties: trafficIslandTypeProperties,
              pedestrianZoneTypeProperties: pedestrianZoneTypeProperties,
              creationType: .newInfrastructureWithStartAndEndIntersection)
  }
}
