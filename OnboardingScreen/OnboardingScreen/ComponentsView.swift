//
//  ComponentsView.swift
//  OnboardingScreen
//
//  Created by AMALITECH MACBOOK on 16/06/2023.
//

import SwiftUI

    // custom capsule button
func capsuleButton(isSelected: Bool = false, label: String, action: @escaping () -> Void) -> some View {
    return Button(action: action) {
        Text(label)
            .frame(maxWidth: Screen().screenSize.width*0.2)
            .padding(8)
            .foregroundColor(isSelected ? .white: .black)
            .background(
                Capsule()
                    .fill( isSelected ? Color("ColorBlueBG"): Color.white)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 1))

    }
}
//single textfield view
struct TextFieldView: View {
    @Binding var fieldName: String
    var fieldTitle: String
    var placeholder: String
    var isSecure: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(fieldTitle)
                .foregroundColor(.gray)
                .font(.system(size: 22, weight: .light))
            if isSecure {
                SecureField(placeholder, text: $fieldName)
                    .textFieldStyle(NiceTextFieldStyle())
                    .frame(maxWidth: Screen().screenSize.width*0.3)
            } else {
                TextField(placeholder, text: $fieldName)
                    .textFieldStyle(NiceTextFieldStyle())
                    .frame(maxWidth: Screen().screenSize.width*0.3)
            }
        }
    }
}
// custom texfield style
struct NiceTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<_Label>) -> some View {
        configuration
            .padding(14)
            .background(Color.gray.opacity(0.0))
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.gray, lineWidth: 1)
            )
    }
}
// custom button style
struct NiceButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: Screen().screenSize.width*0.3)
            .foregroundColor(.white)
            .cornerRadius(8)
            .font(.headline)
            .animation(.easeInOut, value: 1.0)
    }
}
// register from
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



// image page with blue background
struct HalfPageView: View {
    let screen = Screen()
    let image: String
    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle()
                .background(Color("ColorBlueBG"))
            VStack {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            }
            .frame(maxWidth: screen.screenSize.width*0.5, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .background(
                Image("backgroundImage")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            )
            .background(Color("ColorBlueBG"))
        }
    }
}
// getting screen sizes
struct Screen {
    var screenSize: CGSize {
#if os(iOS)
        return UIScreen.main.bounds.size
#elseif os(macOS)
        return NSScreen.main?.frame.size ?? .zero
#else
        return CGSize.zero
#endif
    }
}
