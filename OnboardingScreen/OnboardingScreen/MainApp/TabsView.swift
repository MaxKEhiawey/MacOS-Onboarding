//
//  TabsView.swift
//  OnboardingScreen
//
//  Created by AMALITECH MACBOOK on 16/06/2023.
//

import SwiftUI

struct TabsView: View {
    @ObservedObject var viewModel = OnboardingViewModel()
    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            RegisterView(viewModel: viewModel)
            .tag(0)
           // @Binding var selectedTab: Int
            AddPhotoView(viewModel: viewModel)
                .tag(1)
            SurveyView(viewModel: viewModel)
                .tag(2)
            InterestsView(viewModel: viewModel)
                .tag(3)
            SuccessView(viewModel: viewModel)
                .tag(4)
        }
       // .highPriorityGesture(DragGesture())
        .tabViewStyle(PageTabViewStyle())
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
