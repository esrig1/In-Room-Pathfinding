//
//  node.swift
//  shortPath
//
//  Created by Joshua Esrig on 10/25/23.
//

public class Path: CustomStringConvertible {
    var beginNode: Node
    var finishNode: Node
    var pathDoor: Door
    var weight: Int
    
    init(beginNode: Node, finishNode: Node, pathDoor: Door) {
        self.beginNode = beginNode
        self.finishNode = finishNode
        self.pathDoor = pathDoor
        weight = 1 //subject to change, placeholder for now
    }
    
    public var description: String {
        return beginNode.name + " -> " + finishNode.name
    }
    
    
    
}

public class Node: CustomStringConvertible {
    var paths: [Path]
    var room: Room
    var name: String
    
    init(name: String, room: Room){
        self.name = name
        self.paths = []
        self.room = room
    }
    
    public var description: String {
        return "name: " + name + " Paths: " + paths.description
    }
    
    
    func addPath(startNode: Node, endNode: Node, pathDoor: Door) {
        paths.append(Path(beginNode: startNode, finishNode: endNode, pathDoor: pathDoor))
    }
    
    func getPath(startNode: String, endNode: String) -> Path? {
        for path in paths {
            if path.beginNode.name == startNode && path.finishNode.name == endNode {
                return path
            }
        }
        return nil
    }
}
