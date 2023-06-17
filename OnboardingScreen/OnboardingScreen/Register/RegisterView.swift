//
//  RegisterView.swift
//  OnboardingScreen
//
//  Created by AMALITECH MACBOOK on 16/06/2023.
//

import SwiftUI

struct RegisterView: View {
    @ObservedObject var viewModel: OnboardingViewModel
    var body: some View {
      HStack {
          HalfPageView(image: "register")
          RegisterForView(count: $viewModel.selectedTab)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(.white)
        .background(ignoresSafeAreaEdges: .all)
    }
}
