//
//  RegisterView.swift
//  OnboardingScreen
//
//  Created by AMALITECH MACBOOK on 16/06/2023.
//

import SwiftUI

struct RegisterView: View {
    var screen = Screen()
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {

      HStack {
          HalfPageView(image: "register")
          RegisterForView()

        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(.white)
        .background(ignoresSafeAreaEdges: .all)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
