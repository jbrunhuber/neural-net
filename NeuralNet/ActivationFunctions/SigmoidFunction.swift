//
//  SigmoidFunction.swift
//  NeuralNet
//
//  Created by Joshua Brunhuber on 03.06.18.
//  Copyright © 2018 Joshua Brunhuber. All rights reserved.
//

import Foundation

struct SigmoidFunction: Activateable {
    
    /**
     Calculates the sigmoid function on the input value.
     The sigmoid function a S-shaped curve and its result is in the range between 0 and 1
     
     - parameter value: The value to calculate
     - returns: The calculated result
     */
    func activate(value: Double) -> Double {
     
        return 1 / (1 + pow(M_E, -(value)))
    }
}
