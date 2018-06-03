//
//  IdentityFunction.swift
//  NeuralNet
//
//  Created by Joshua Brunhuber on 03.06.18.
//  Copyright © 2018 Joshua Brunhuber. All rights reserved.
//

import Foundation

struct IdentityFunction: Activateable {
    
    /**
     Simply return the same value as passed to the function
     
     - parameter value: The value to return
     - returns: value
     */
    func activate(value: Double) -> Double {
        
        return value
    }
}
