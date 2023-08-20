//
//  SecondView.swift
//  NavTester
//
//  Created by Jon Flowers on 8/17/23.
//

import SwiftUI
import ComposableArchitecture


struct SecondView: View
{
    let store: StoreOf<SecondFeature>
    
    var body: some View
    {
        WithViewStore(store) { viewStore in
            Button(action: {
                viewStore.send(.showSelector)
            }) {
                Text("Show Selector")
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider
{
    static var previews: some View
    {
        SecondView(store: Store(initialState: SecondFeature.State(), reducer: SecondFeature()))
    }
}
