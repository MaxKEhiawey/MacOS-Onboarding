//
//  LottieView.swift
//  OnboardingScreen
//
//  Created by AMALITECH MACBOOK on 16/06/2023.
//

import SwiftUI

struct LottieView: View {
    let screen = Screen()
    var body: some View {
        ZStack(alignment: .topTrailing) {

            VStack(alignment: .center, spacing: 40) {
                VStack(alignment: .center, spacing: 40) {
                    Text("Woohoo!")
                        .font(.system(size: 40, weight: .bold))
                    Text("Hey there! Your registration is complete, get excited \nfor the ultimate quiz experience of your life. Let's do this!")
                    VStack {
                        Image("lottie")
                    }
                    Spacer()
                    Button {

                    } label: {
                        Text("Continue")
                    }.frame(maxWidth: screen.screenSize.width*0.2)
                        .padding(.vertical, 12)
                        .foregroundColor(.white)
                        .background(Color("ColorBlueBG"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("ColorBlueBG"), lineWidth: 1)
                        )
                }
                .multilineTextAlignment(.center)
                .frame(height: screen.screenSize.height*0.9)

            }
            .padding(.top, 48)
            .font(.system(size: 22, weight: .regular))
            .frame(maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .foregroundColor(.black)
            HStack {
                Button {

                } label: {
                    HStack {
                        Image(systemName: "arrow.left")
                        Text("Back")
                    }
                }.padding(.leading, 80)
                Spacer()
                Text("Step 4 of 4")
                Spacer()
                Text("Exit")
                    .padding(.trailing, 40)
            }.padding(.top, 40)
                .foregroundColor(.black)
                .font(.system(size: 22, weight: .regular))
        }
    }
}

struct LottieView_Previews: PreviewProvider {
    static var previews: some View {
        LottieView()
    }
}
