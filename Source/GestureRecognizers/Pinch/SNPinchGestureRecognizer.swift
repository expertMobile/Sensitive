//
//  SNPinchGestureRecognizer.swift
//  SensitiveDemo
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

public class SNPinchGestureRecognizer: UIPinchGestureRecognizer {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    public init(handlerBlock: SNPinchGestureRecognizerHandlerBlock) {
        // Create handler
        
        let handler = SNPinchGestureRecognizerHandler(handlerBlock: handlerBlock)
        
        
        // Call super init
        
        super.init(target: handler, action: "runHandlerBlock")
        
        
        // Initialize handler
        
        self.handler = handler
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    private var handler: SNPinchGestureRecognizerHandler!
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    
    // MARK: Protocol methods
    
}