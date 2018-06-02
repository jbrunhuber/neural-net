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
        
        let network = NeuronalNetwork()
        network.assign(neurons: [inputValue1, inputValue2, inputValue3, inputValue4])
        
        let output = HiddenNeuron()
        network.setOutputNeuron(output: output)
        
        if network.mesh(weights: [2, -2, 4, 7]) {
            let expected = 57.0
            let actual = output.value()
            XCTAssertEqual(expected, actual)
        } else {
            XCTFail()
        }
    }
}
