//
//  SecondFeature.swift
//  NavTester
//
//  Created by Jon Flowers on 8/17/23.
//

import Foundation
import ComposableArchitecture


struct SecondFeature: ReducerProtocol
{
    
    struct State: Equatable
    {
        
    }
    
    enum Action
    {
        case showSelector
    }
    
    
    init() {}
    
    
    var body: some ReducerProtocol<State, Action>
    {
        
        Reduce { state, action in
            switch action
            {
                case .showSelector:
                    return .none
                    
            }
        }
    }
}

