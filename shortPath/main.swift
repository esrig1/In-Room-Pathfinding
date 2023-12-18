//
//  main.swift
//  shortPath
//
//  Created by Joshua Esrig on 10/25/23.
//

import Foundation




//CS Rockhopper Lab room
var wall21_001 = Obstacle(obstacleCorner1: [-3.269821, 0.838615, -2.071352], obstacleCorner2: [0.29,0,0])
//combining the wall on the right side of csl lab
var wall29and30 = Obstacle(obstacleCorner1: [0.29,0,0], obstacleCorner2: [3.010040, 0, -7.6])
//back wall
var wall4_001 = Obstacle(obstacleCorner1: [3.010040, -0, -7.6], obstacleCorner2: [-2.10, -1.28 ,-9.81])
//left wall
var wall1_001 = Obstacle(obstacleCorner1: [-2.10, -1.28 ,-9.81], obstacleCorner2: [-4.993747, -1.281384, -2.779004])
var RockhopperDoor = Door(doorCorner1: [-3.269821, 0.838615, -2.071352], doorCorner2: [-4.993605, -1.281384, -2.779214])
var RockhopperDoor1 = Obstacle(obstacleCorner1: [-3.269821, 0.838615, -2.071352], obstacleCorner2: [-4.993605, -1.281384, -2.779214])
var table4and5 = Obstacle(obstacleCorner1: [-4, -0.548056, -4.613768], obstacleCorner2: [0, -1.281385, -6.5])
var table5 = Obstacle(obstacleCorner1: [-1.450747, -0.542798, -4.573161], obstacleCorner2: [-3.408935, -1.281385, -6.486970])
var table6 = Obstacle(obstacleCorner1: [-3.712369, -0.556236, -3.893285], obstacleCorner2: [-4.881440, -1.281384, -3.052577])


var CsLabRockhopper = Room(doors: [RockhopperDoor], name: "Rockhopper Lab", obstacles: [wall21_001,wall29and30,wall4_001,wall1_001,table4and5, table6, RockhopperDoor1], arrivedCoord: [-2, 0, -7])


//var rockhopperStart = Room.Coordinate(x: -2, y: 0, z: -8)
//var rockhopperEnd = Room.Coordinate(x: -3, y: 0, z: -3)
//print(CsLabRockhopper.shortestNodePath(startCoord: rockhopperStart, endCoord: rockhopperEnd))




//cs hallway

//long right side hallway wall, extended to be same length as wall 0.001
var wall3_001 = Obstacle(obstacleCorner1: [-7.973124, 0.955490, -3.287125], obstacleCorner2: [-17.131695, -1.281384, -7.001155])
//small wall section outside right of rockhopper door
var wall6_001 = Obstacle(obstacleCorner1: [-4.993720, 0.955490, -2.778939], obstacleCorner2: [-7.973124, 0.955490, -3.287125])
//boundary wall placed to block the rest of csl lab hallway off
var CSLHallwayBoundary = Obstacle(obstacleCorner1: [-3.269821, 0.838615, -2.071352], obstacleCorner2: [-3.203385, -1.281384, 0.511810])
//long left side hallway wall
var wall0_001 = Obstacle(obstacleCorner1: [-3.203385, -1.281384, 0.511810], obstacleCorner2: [-17.278221, 1.348028, -5.263641])
var HallwayOpeningToFoyer = Door(doorCorner1: [-17.125792, -1.281384, -8.061903], doorCorner2: [-18.787271, 0.818617, -8.343304])
var HallwayOpeningToFoyerAsObstacle = Obstacle(obstacleCorner1: [-17.125792, -1.281384, -8.061903], obstacleCorner2: [-18.787271, 0.818617, -8.343304])
//connecting wall 3 to opening
var HallwayConnectWall1 = Obstacle(obstacleCorner1: [-17.131695, -1.281384, -7.001155], obstacleCorner2: [-17.125792, 0.81, -8.061903])
//connecting wall 0 to other side of opening
var HallwayConnectWall2 = Obstacle(obstacleCorner1: [-18.787271, 0.818617, -8.343304], obstacleCorner2: [-17.278221, 1.348028, -5.263641])

var CsLabHallway = Room(doors: [RockhopperDoor, HallwayOpeningToFoyer], name: "CSL Lab Hallway", obstacles: [wall3_001, wall6_001, CSLHallwayBoundary, wall0_001, HallwayConnectWall1, HallwayConnectWall1, RockhopperDoor1, HallwayOpeningToFoyerAsObstacle])

//print(CsLabHallway.consolidateSteps(steps: CsLabHallway.shortestNodePath(startCoord: Room.Coordinate(x:-4, y:-1.281385, z:-1), endCoord: Room.Coordinate(x: -18, y: 0, z: -7))))
//print(CsLabHallway.isCollision(prevLocation: [-6,0,-1], step: [-2,0, 0]))
//print(CsLabHallway.getXBoundary(zLocation: -3, obstacle: wall0_001))

//this is for the hallways that's located where the elevators are, connects csl labs to main foyer.

var doorToFoyer = Door(doorCorner1: [-18.979132, 1.348028, -14.204184], doorCorner2: [-14.521620, -1.281384, -14.346305])
var doorToFoyerAsObstacle = Obstacle(obstacleCorner1: [-18.979132, 1.348028, -14.204184], obstacleCorner2: [-17.125792, -1.281384, -8.061903])

//left wall where elevators are
var wall28 = Obstacle(obstacleCorner1: [-18.787271, 0.818617, -8.343304], obstacleCorner2: [-18.979132, 1.348028, -14.204184])
//right wall where billboard is
var wall2_001 = Obstacle(obstacleCorner1: [-17.125792, -1.281384, -8.061903], obstacleCorner2: [-17.125792, 0, -14.204184])

var HallwayToFoyer = Room(doors: [doorToFoyer, HallwayOpeningToFoyer], name: "Hallway To Foyer", obstacles: [doorToFoyerAsObstacle, HallwayOpeningToFoyerAsObstacle, wall28, wall2_001])

//print(HallwayToFoyer.shortestNodePath(startCoord: Room.Coordinate(x: -18, y: 0, z: -9), endCoord: Room.Coordinate(x: -18, y: 0, z: -13)))


//this is the foyer
var wall25_001 = Obstacle(obstacleCorner1: [-17.125792, 0.955491, -21.480749], obstacleCorner2: [-20.053408, -1.281384, -21.477411])
var doorToCsOfficeHours = Door(doorCorner1: [-20.053408, -1.281384, -21.477411], doorCorner2: [-21.580652, 0.601976, -21.518768])
//wall connecting door to office hours and door to foyer
var boundaryWall2 = Obstacle(obstacleCorner1: [-21.580652, 0.601976, -21.518768], obstacleCorner2: [-18.979132, 1.348028, -14.204184])
//wall connecting wall 25_001 and door to foyer
var boundaryWall3 = Obstacle(obstacleCorner1: [-17.125792, 0.955491, -21.480749], obstacleCorner2: [-17.125792, -1.281384, -8.061903])
var doorToCsOfficeHoursAsObstacle = Obstacle(obstacleCorner1: [-20.053408, -1.281384, -21.477411], obstacleCorner2: [-21.580652, 0.601976, -21.518768])

var foyer = Room(doors: [doorToCsOfficeHours, doorToFoyer], name: "Foyer", obstacles: [wall25_001,doorToCsOfficeHoursAsObstacle,doorToFoyerAsObstacle,boundaryWall2,boundaryWall3], arrivedCoord: [-18, 0, -19])

//print(foyer.shortestNodePath(startCoord: Room.Coordinate(x: -17, y: 0, z: -15), endCoord: Room.Coordinate(x: -20.5, y: 0, z: -21)))




//this is the office hour rooms
var wall23_002 = Obstacle(obstacleCorner1: [-22.241219, 1.023867, -21.530399], obstacleCorner2: [-19.241699, -1.578024, -21.479057])
var wall24 = Obstacle(obstacleCorner1: [-22.084940, 0.508692, -34.360954], obstacleCorner2: [-18.970106, -2.451308, -34.241409])

//walls connecting each side of OH room
var wall28_001 = Obstacle(obstacleCorner1: [-18.970106, -2.451308, -34.241409], obstacleCorner2: [-19.241699, -1.578024, -21.479057])
var wall27_002 = Obstacle(obstacleCorner1: [-22.241219, 1.023867, -21.530399], obstacleCorner2: [-22.084940, 0.508692, -34.360954])

var doorToEntryway = Door(doorCorner1: [-22.084940, 0.508692, -34.360954], doorCorner2: [-18.970106, -2.451308, -34.241409])
var doorToOHRoom = Door(doorCorner1: [-22.179487, 0.557532, -25.129242], doorCorner2: [-22.194223, -1.578025, -24.295891])

var officeHourRooms = Room(doors: [doorToCsOfficeHours,doorToEntryway,doorToOHRoom], name: "Office Hour Rooms", obstacles: [wall23_002, wall24, wall28_001,wall27_002])

//print(consolidateSteps(steps: officeHourRooms.shortestNodePath(startCoord: Room.Coordinate(x: -21, y: 0, z: -22), endCoord: Room.Coordinate(x: -21, y: 0, z: -34))))


//entryway
var wall13 = Obstacle(obstacleCorner1: [-12.826552, 1.140121, -42.126377], obstacleCorner2: [-24.740063, -2.451308, -42.520138])
var boundaryWall4 = Obstacle(obstacleCorner1: [-24.740063, -2.451308, -42.520138], obstacleCorner2: [-21.5, 0, -34.24])
var wall6 = Obstacle(obstacleCorner1: [-18.444792, -2.451308, -39.434963], obstacleCorner2: [-18.970106, -2.451308, -34])
var wall1 = Obstacle(obstacleCorner1: [-18.444841, 1.140120 ,-39.435013], obstacleCorner2: [-12.930174, -2.451307, -39.223419])
var doorToFinalHallway = Door(doorCorner1: [-12.930174, -2.451307, -39.223419], doorCorner2: [-12.826552, 1.140121, -42.126377])
var wall15 = Obstacle(obstacleCorner1: [-12.930174, -2.451307, -39.223419], obstacleCorner2: [-12.826552, 1.140121, -42.126377])

var entryway = Room(doors: [doorToFinalHallway, doorToEntryway], name: "Entryway", obstacles: [wall13,wall6,wall1,boundaryWall4,wall24, wall28_001], arrivedCoord: [-14, 0, -40])


var structure = Building(rooms: [CsLabHallway, CsLabRockhopper, HallwayToFoyer, foyer, officeHourRooms, entryway])
var buildingGraph = Graph(building: structure)
buildingGraph.nodifyRooms()
buildingGraph.createPaths()

//print(buildingGraph.dijkstraShortestPath(from: buildingGraph.nodes[foyer.name]!, to: buildingGraph.nodes[CsLabRockhopper.name]!))



//this function is essentially the only one that should be used by a frontend application. While our frontend and backend are
//separated right now, this end-all function can either be run on the mobile device or on a backend somewhere. All of which
//is depending on how large the builing is. There are some inneficiencies in my algorithm due to time constraints, so if a
//building model is too big, this could possibly take too and a mobile device might not hae enough processing power.
//
//Let me know if you have any questions -Josh Esrig
func shortestBuildingSteps(startingRoom: Room, endingRoom: Room, buildingGraph: Graph) {
    //print(self.rooms.description)
    
//    print(buildingGraph.description)
//    var startingNode = buildingGraph.nodes[startingRoom.name]!
//    var endingNode = buildingGraph.nodes[endingRoom.name]!
//    var djikstrasShortestPath = buildingGraph.dijkstraShortestPath(from: startingNode, to: endingNode)
//    var secondNode = djikstrasShortestPath[1]
//    print(djikstrasShortestPath)
//    var prevCoord = getCoord(buildingGraph: buildingGraph, currNode: firstNode, nextNode: secondNode, flag: 2)
//    var nextCoord = getCoord(buildingGraph: buildingGraph, currNode: firstNode, nextNode: secondNode, flag: 0)
//    
  
    let startingNode = buildingGraph.nodes[startingRoom.name]!
    let endingNode = buildingGraph.nodes[endingRoom.name]!
    let djikstrasShortestPath = buildingGraph.dijkstraShortestPath(from: startingNode, to: endingNode)
    let firstNode = djikstrasShortestPath[0]
    var currentCoord = getCoord(buildingGraph: buildingGraph, currNode: firstNode, nextNode: nil, flag: 2)
    
    
    
    for (index, room) in djikstrasShortestPath.enumerated() {
        var currentRoomObj = buildingGraph.nodes[room]?.room
        var currentRoomString = djikstrasShortestPath[index]
        var nextRoomString = djikstrasShortestPath[index+1]
        print("Current room: " + currentRoomString + "\nDirections to Next Room: " + nextRoomString)
        var nextCoord = getCoord(buildingGraph: buildingGraph, currNode: currentRoomString, nextNode: nextRoomString, flag: 0)
        var shortestPath = buildingGraph.nodes[currentRoomString]?.room.shortestNodePath(startCoord: currentCoord, endCoord: nextCoord)
        currentCoord = nextCoord
        
        for direction in currentRoomObj!.consolidateSteps(steps: shortestPath!) {
            print(direction)
        }
        print("Proceed Through the Door")
        print()
        
        if index >= djikstrasShortestPath.count - 2 { //exit loop before we iterate the last arrival room, different logic is needed
            var currentRoomObj = buildingGraph.nodes[room]?.room
            var currentRoomString = djikstrasShortestPath[index+1]
            print("current room: " + currentRoomString)
            currentCoord = nextCoord
            nextCoord = getCoord(buildingGraph: buildingGraph, currNode: currentRoomString, nextNode: nextRoomString, flag: 1)
            var shortestPath = buildingGraph.nodes[currentRoomString]?.room.shortestNodePath(startCoord: currentCoord, endCoord: nextCoord)
            for direction in currentRoomObj!.consolidateSteps(steps: shortestPath!) {
                print(direction)
            }
            
            
            break
        }
    }
    
    

    
    
//    if let shortestPath = buildingGraph.nodes[firstNode]?.room.shortestNodePath(startCoord: prevCoord, endCoord: nextCoord) {
//            print(shortestPath)
//        } else {
//            print("Error: Unable to calculate shortest path.")
//        }
//    
}

/**
 Used to get a relevant destination coordinate. Mainly used to traverse from one door to another. If you need the current rooms arrival coordinate, use with a flag of 2. If you need
 the next room's arrival coordinate, use with a flag of 1. Otherwise use 0.
 */
func getCoord(buildingGraph: Graph, currNode: String, nextNode: String?, flag: Int) -> Room.Coordinate{
    if flag == 1 { //if we indicate this is our end destination
        print(nextNode!.description)
        var xCoord = buildingGraph.nodes[nextNode!]?.room.arrivedCoord?[0]
        var zCoord = buildingGraph.nodes[nextNode!]?.room.arrivedCoord?[2]
                
                // Now, xCoord and zCoord are non-optional Doubles
        return Room.Coordinate(x: xCoord!, y: 0, z: zCoord!)
            }
        if flag ==  2 {
            var xCoord = buildingGraph.nodes[currNode]?.room.arrivedCoord?[0]
            var zCoord = buildingGraph.nodes[currNode]?.room.arrivedCoord?[2]
                    
                    // Now, xCoord and zCoord are non-optional Doubles
            return Room.Coordinate(x: xCoord!, y: 0, z: zCoord!)

        }
    return Room.Coordinate(x:(buildingGraph.nodes[currNode]?.getPath(startNode: currNode, endNode: nextNode!)?.pathDoor.middleOfDoor[0])! , y: 0, z:     (buildingGraph.nodes[currNode]?.getPath(startNode: currNode, endNode: nextNode!)?.pathDoor.middleOfDoor[2])!)
    }
    
    
    
    shortestBuildingSteps(startingRoom: CsLabRockhopper, endingRoom: entryway, buildingGraph: buildingGraph)
    
    





