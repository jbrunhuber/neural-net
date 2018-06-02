//
//  Connection.swift
//  NeuralNet
//
//  Created by Joshua Brunhuber on 02.06.18.
//  Copyright © 2018 Joshua Brunhuber. All rights reserved.
//

import Foundation

class Connection {
    
    var neuronReference: Neuron
    var weight: Float
    
    /**
     Instantiates a new neuron connection
     
     - parameter neuronReference: The source input neuron
     - parameter weight: The weight factor for the neuron connection
     */
    init(neuronReference: Neuron, weight: Float) {
        
        self.neuronReference = neuronReference
        self.weight = weight
    }
}
