//
//  StartingView.swift
//  In a Sheet of Paper
//
//  Created by ditthales on 18/04/23.
//

import SwiftUI

struct StartingView: View {
    var body: some View {
        ZStack{
            Color.black
            NavigationButton {
                
            } destination: {
                GameView()
            } label: {
                VStack{
                    Image("image1")
                    Text("This app works on landscape mode, please make sure your device is rotated\nand click anywhere to start. You can use Apple Pencil :)")
                        .foregroundColor(.white)
                        .lineLimit(3)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .font(Font.custom("JustMeAgainDownHere", size: 36))
                        .frame(height: 180, alignment: .center)
                        .padding(.bottom, 33)
                        .padding(.top, 17)
                        .padding(.horizontal, 30)
                }
            }

        }
        .ignoresSafeArea()
    }
}

struct StartingView_Previews: PreviewProvider {
    static var previews: some View {
        StartingView()
    }
}
