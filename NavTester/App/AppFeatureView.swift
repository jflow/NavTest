//
//  AppFeatureView.swift
//  NavTester
//
//  Created by Jon Flowers on 8/17/23.
//

import SwiftUI
import ComposableArchitecture
import SwiftUINavigation


struct AppFeatureView: View 
{
    let store: StoreOf<AppFeature>
    
    var body: some View
    {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack
            {
                Switch(viewStore.binding(\.$route))
                {
                    CaseLet(/AppFeature.AppRoute.selector) { _ in
                        SelectoreView(store: store.scope(state: \.selector, action: AppFeature.Action.selector))
                    }
                    
                    CaseLet(/AppFeature.AppRoute.second) { _ in
                        SecondView(store: store.scope(state: \.second, action: AppFeature.Action.second))
                    }
                }
                
                
                
//                Switch(viewStore.binding(\.$route))
//                {
//                    CaseLet(/AppFeature.AppRoute.select) { _ in
//                        SelectoreView(store: store.scope(
//                            state: \.login,
//                            action: AppFeature.Action.select
//                        ))
//                    }
//                    CaseLet(/AppFeature.AppRoute.second) { _ in
//                        SecondView(store: store.scope(
//                            state: \.second,
//                            action: AppFeature.Action.second
//                        ))
//                    }
//                }
            }
        }
    }
}


//struct AppFeatureView_Previews: PreviewProvider
//{
//    static var previews: some View
//    {
//        AppFeatureView(store: Store(
//            initialState: AppFeature.State,
//            reducer: AppFeature()
//        ))
//    }
//}
