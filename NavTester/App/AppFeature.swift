//
//  AppFeature.swift
//  NavTester
//
//  Created by Jon Flowers on 8/17/23.
//

import Foundation
import ComposableArchitecture


struct AppFeature: ReducerProtocol
{
    enum AppRoute: Equatable
    {
        case selector
        case second
    }
    
    struct State: Equatable
    {
        @BindingState var route: AppRoute = .selector
        var selector = SelectorFeature.State()
        var second = SecondFeature.State()
        
    }
    
    enum Action: BindableAction
    {
        case binding(BindingAction<State>)
        
        case selector(SelectorFeature.Action)
        case second(SecondFeature.Action)
        
    }
    
    
    init() {}
    
    
    var body: some ReducerProtocol<State, Action>
    {
        BindingReducer()
        
        Scope(state: \.selector, action: /Action.selector)
        {
            SelectorFeature()
        }
        
        Scope(state: \.second, action: /Action.second)
        {
            SecondFeature()
        }
        
        Reduce { state, action in
            switch action
            {
                case .selector:
                    state.route = .selector
                    return .none
                    
                case .second:
                    state.route = .second
                    return .none
                    
                case .binding:
                    return .none
                
            }
        }
    }
}
