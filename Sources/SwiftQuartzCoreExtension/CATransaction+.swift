//
//  CATransaction+.swift
//  
//
//  Created by Ji-Hwan Kim on 10/13/23.
//

import Foundation
import QuartzCore

extension CATransaction {
    public static func run<R>(action: () -> R) -> R {
        begin()
        let result = action()
        commit()
        
        return result
    }
    
    public static func run<R>(completion: @escaping () -> Void, action: () -> R) -> R {
        setCompletionBlock(completion)
        begin()
        let result = action()
        commit()
        
        return result
    }
}
