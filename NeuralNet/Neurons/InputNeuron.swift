//
//  InputNeuron.swift
//  NeuralNet
//
//  Created by Joshua Brunhuber on 02.06.18.
//  Copyright © 2018 Joshua Brunhuber. All rights reserved.
//

import Foundation

class InputNeuron: Neuron {
    
    var neuronValue: Double
    
    init(value: Double) {
        
        neuronValue = value
    }
    
    func value() -> Double {
        
        return neuronValue
    }
}
