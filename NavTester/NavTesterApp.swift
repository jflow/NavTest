//
//  NavTesterApp.swift
//  NavTester
//
//  Created by Jon Flowers on 8/17/23.
//

import SwiftUI
import ComposableArchitecture

@main
struct NavTesterApp: App 
{
    let store = Store(initialState: AppFeature.State(), reducer: AppFeature())
    
    var body: some Scene
    {
        WindowGroup 
        {
            AppFeatureView(store: store)
        }
    }
}
