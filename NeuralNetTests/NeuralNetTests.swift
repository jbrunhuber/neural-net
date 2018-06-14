//
//  NeuralNetTests.swift
//  NeuralNetTests
//
//  Created by Joshua Brunhuber on 02.06.18.
//  Copyright © 2018 Joshua Brunhuber. All rights reserved.
//

import XCTest
import Foundation

@testable import NeuralNet

class NeuralNetTests: XCTestCase {
    
    func testSingleLayerPerceptron() {
        
        let inputValue1 = InputNeuron(value: 1)
        let inputValue2 = InputNeuron(value: 3)
        let inputValue3 = InputNeuron(value: 3)
        let inputValue4 = InputNeuron(value: 7)
        
        let network = NeuralNetwork()
        network.assign(neurons: [inputValue1, inputValue2, inputValue3, inputValue4])
        
        let activationFunction = IdentityFunction()
        
        let output = HiddenNeuron(activatable: activationFunction)
        network.setOutputNeuron(output: output)
        
        if network.mesh(weights: [2, -2, 4, 7]) {
            let expected = 57.0
            let actual = output.value()
            XCTAssertEqual(expected, actual)
        } else {
            XCTFail()
        }
    }
    
    func testSingleLayerPerceptronSigmoid() {
        
        let inputValue1 = InputNeuron(value: 0)
        let inputValue2 = InputNeuron(value: 0)
        let inputValue3 = InputNeuron(value: 0)
        let inputValue4 = InputNeuron(value: 0)
        
        let network = NeuralNetwork()
        network.assign(neurons: [inputValue1, inputValue2, inputValue3, inputValue4])
        
        let activationFunction = SigmoidFunction()
        
        let output = HiddenNeuron(activatable: activationFunction)
        network.setOutputNeuron(output: output)
        
        if network.mesh(weights: [2, -2, 4, 7]) {
            let expected = 0.5
            let actual = output.value()
            XCTAssertEqual(expected, actual)
        } else {
            XCTFail()
        }
    }
}
