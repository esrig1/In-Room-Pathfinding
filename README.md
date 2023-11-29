# Building Pathfinding Algorithm

This algorithm was created during my time working with LastLock, in which
I was tasked with creating a building navigation algorithm

## Introduction

Given a building, rooms, and all obstacles in these given rooms, this program has the capability of "nodifying" a building object into individual rooms, and then using an in room pathfinding algorithm to navigate around obstacles from door to door. 

## Features

Obstacle objects can easily be created from data imported from blender
or roomplan. You could easily parse a usdz file and then import the 1st
and 5th coordinate of any object for this to work

In room pathfinding has a time complexity of logN, where N is the amount of possible places somebody could move in a room. Has a space complexity of N.

Building Nodifying algorithm has a time complexity of N^2, where n is the total number of doors specified

