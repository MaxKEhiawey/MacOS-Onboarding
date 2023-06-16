//
//  RegisterForView.swift
//  OnboardingScreen
//
//  Created by AMALITECH MACBOOK on 16/06/2023.
//

import SwiftUI


struct RegisterForView: View {
    let screen = Screen()
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(alignment: .center, spacing: 40) {
                Text("Create Account")
                    .font(.system(size: 40, weight: .bold))
                TextFieldView(fieldName: $name, fieldTitle: "Name", placeholder: "John Doe")
                TextFieldView(fieldName: $email, fieldTitle: "E-mail", placeholder: "johndoe@gmail.com")
                TextFieldView(fieldName: $password, fieldTitle: "Password", placeholder: "*********", isSecure: true)
                Button {

                } label: {
                    Text("Create Account")
                        .font(.system(size: 22, weight: .light))
                }.buttonStyle(NiceButtonStyle())
                    .padding(.vertical, 12)
                    .background(Color("ColorBlueBG"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("ColorBlueBG"), lineWidth: 1)
                    )
                Button {

                } label: {
                    HStack(spacing: 32) {
                        Image("google")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(16)
                            .frame(width: 40, height: 40)
                            .padding(.leading, 28)
                        Text("Sign up with Google")
                            .foregroundColor(.black)
                            .font(.system(size: 22, weight: .light))
                        Spacer()
                    }

                }.buttonStyle(NiceButtonStyle())
                    .padding(.vertical, 4)
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                HStack {
                    Text("Already have account?")
                        .font(.system(size: 22, weight: .light))
                        .foregroundColor(.gray)
                    Text("Log In")
                        .font(.system(size: 22, weight: .semibold))
                        .foregroundColor(Color("ColorBlueBG"))
                }
            }
            .frame(maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .foregroundColor(.black)
            HStack {
                Text("Step 1 of 4")
                    .foregroundColor(.black)
                    .font(.system(size: 22, weight: .regular))
                    .padding(.leading, 80)
                Spacer()
                Text("Exit")
                    .foregroundColor(.black)
                    .font(.system(size: 22, weight: .regular))
                    .padding(.trailing, 40)
            }.padding(.top, 40)

        }
    }
}
