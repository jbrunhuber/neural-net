//
//  HiddenNeuron.swift
//  NeuralNet
//
//  Created by Joshua Brunhuber on 02.06.18.
//  Copyright © 2018 Joshua Brunhuber. All rights reserved.
//

import Foundation

class HiddenNeuron: Neuron {
    
    var connections: [Connection] = []
    private var activationFunction: Activateable
    
    init(activatable: Activateable) {
        
        activationFunction = activatable
    }
    
    /**
     Calculates the value of the neuron considering all existing connections
     
     - returns: the calculated neuron value
     */
    func value() -> Double {
        
        return calculate()
    }
    
    /**
     Sums the result of the factor of the target neuron and its weight
     
     - returns: the calculated neuron value
     */
    func calculate() -> Double {
        
        var sum = 0.0
        for connection in connections {
            sum += connection.neuronReference.value() * Double(connection.weight)
        }
        return activationFunction.activate(value: sum)
    }
    
    /**
     Calculates the value of the neuron considering all existing connections
     
     - parameter neuron: the neuron to connect
     - parameter weight: the weight of the connection
     */
    func connect(with neuron: Neuron, weight: Float) {
        
        let connection = Connection(neuronReference: neuron, weight: weight)
        connections.append(connection)
    }
}
