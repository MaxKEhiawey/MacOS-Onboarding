//
//  TabsView.swift
//  OnboardingScreen
//
//  Created by AMALITECH MACBOOK on 16/06/2023.
//

import SwiftUI

struct TabsView: View {
    @State  var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            RegisterView()
                .onTapGesture {
                   // selectedTab+=1
                }
            .tag(0)
            Text("Tab 2")
                .onTapGesture {
                    selectedTab+=1
                }
                .tag(1)
            Text("Tab 3")
                .tag(2)
                .onTapGesture {
                    selectedTab+=1
                }
            Text("Tab 4")
                .tag(3)
        }
        .tabViewStyle(PageTabViewStyle())
        .navigationBarBackButtonHidden(true)
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
