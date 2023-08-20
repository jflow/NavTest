//
//  SelectorFeature.swift
//  NavTester
//
//  Created by Jon Flowers on 8/17/23.
//

import Foundation
import ComposableArchitecture


struct SelectorFeature: ReducerProtocol
{
    
    struct State: Equatable
    {
        
    }
    
    enum Action
    {
        case showSecond
    }
    
    
    init() {}
    
    
    var body: some ReducerProtocol<State, Action>
    {
        
        Reduce { state, action in
            switch action
            {
                case .showSecond:
                    return .none
                    
            }
        }
    }
}

