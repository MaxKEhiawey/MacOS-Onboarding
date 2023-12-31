//
//  PhotoPickerView.swift
//  OnboardingScreen
//
//  Created by AMALITECH MACBOOK on 16/06/2023.
//

import SwiftUI

struct PhotoPickerView: View {
    let screen = Screen()
    @State private var isAddImage: Bool = false
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(alignment: .center, spacing: 40) {
                VStack(alignment: .center, spacing: 40) {
                    Text("Add Photo")
                        .font(.system(size: 40, weight: .bold))
                    Text("Add a photo so other members know who you are.")
                    Image(isAddImage ? "colorImage": "imageplaceholder")
                        .cornerRadius(20)
                    Spacer()
                    Button {
                        isAddImage.toggle()
                    } label: {
                        Text(isAddImage ? "Continue": "Upload a photo")
                    }.frame(maxWidth: screen.screenSize.width*0.2)
                        .padding(.vertical, 12)
                        .foregroundColor(.white)
                        .background(Color("ColorBlueBG"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("ColorBlueBG"), lineWidth: 1)
                        )
                    if !isAddImage {
                        Button {

                    } label: {
                        Text("Skip")
                    }
                }
                }
                .frame(height: screen.screenSize.height*0.95)
            }
            .padding(.top, 40)
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
                Text("Step 2 of 4")
                Spacer()
                Text("Exit")
                    .padding(.trailing, 40)
            }.padding(.top, 40)
                .foregroundColor(.black)
                .font(.system(size: 22, weight: .regular))
        }
    }
}

struct PhotoPickerView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoPickerView()
    }
}
