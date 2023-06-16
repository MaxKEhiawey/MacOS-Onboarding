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
            AddPhotoView()
                .onTapGesture {
                    //selectedTab+=1
                }
                .tag(1)
            SurveyView()
                .tag(2)
                .onTapGesture {
                    //selectedTab+=1
                }
            InterestsView()
                .tag(3)
            SuccessView()
                .tag(4)
        }
        .highPriorityGesture(DragGesture())
        .tabViewStyle(PageTabViewStyle())
        .navigationBarBackButtonHidden(true)
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
