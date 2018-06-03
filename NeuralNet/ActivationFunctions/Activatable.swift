//
//  Activatable.swift
//  NeuralNet
//
//  Created by Joshua Brunhuber on 03.06.18.
//  Copyright © 2018 Joshua Brunhuber. All rights reserved.
//

import Foundation

protocol Activateable {
    
    func activate(value: Double) -> Double
}
