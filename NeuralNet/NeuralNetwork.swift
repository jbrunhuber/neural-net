//
//  NeuralNetwork.swift
//  NeuralNet
//
//  Created by Joshua Brunhuber on 02.06.18.
//  Copyright © 2018 Joshua Brunhuber. All rights reserved.
//

import Foundation

class NeuralNetwork {
    
    var input: [InputNeuron] = []
    var results: [HiddenNeuron] = []
    
    /**
     Generates the connections between the input and worker neurons

     - returns: true, if the mesh-process was succesful, false otherwise
     */
    func mesh(weights: [Float]) -> Bool {
        
        let requiredWeights = input.count * results.count
        if weights.count < requiredWeights {
            print("You have to specify enough weights in order to connect the neuron with each other.")
            print("In this case \(requiredWeights) weights have to be specified.")
            return false
        }
        
        var currentIndex = 0
        
        for inputNeuron in input {
            for worker in results {
                worker.connect(with: inputNeuron, weight: weights[currentIndex])
                currentIndex += 1
            }
        }
        return true
    }
    
    /**
     Assign input neurons to the network
     
     - parameter neurons: The input-neurons to assign
     */
    func assign(neurons: [InputNeuron]) {
        
        input.append(contentsOf: neurons)
    }
    
    /**
     Sets the single perceptron neuron
     
     - parameter output: The neuron that will be used as output-neuron
     */
    func setOutputNeuron(output: HiddenNeuron) {
        
        results.append(output)
    }
}
