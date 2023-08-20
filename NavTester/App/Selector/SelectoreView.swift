//
//  SelectoreView.swift
//  NavTester
//
//  Created by Jon Flowers on 8/17/23.
//

import SwiftUI
import ComposableArchitecture


struct SelectoreView: View
{
    let store: StoreOf<SelectorFeature>
    
    var body: some View
    {
        WithViewStore(store) { viewStore in
            Button(action: {
                viewStore.send(.showSecond)
            }) {
                Text("Show Second")
            }
        }
    }
}

struct SelectoreView_Previews: PreviewProvider
{
    static var previews: some View
    {
        SelectoreView(store: Store(initialState: SelectorFeature.State(), reducer: SelectorFeature()))
    }
}
