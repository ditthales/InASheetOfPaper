//
//  CreditsView.swift
//  In a Sheet of Paper
//
//  Created by ditthales on 18/04/23.
//

import SwiftUI

struct CreditsView: View {
    @State private var isTextHidden = true
    
    var body: some View {
        ZStack {
            Color.white
            VStack{
                Text("This experience was made by Thales Fraga especially for apple's WWDC Swift Student Challenge 2023.\n\nRoyalties free music:\nMeditation by Arulo\nAvailable on mixkit.co\n\nCustom Fonts:\nJust Me Again Down Here by Kimberly Geswein\nAvailable on Google Fonts\n\nIllustrations made by:\nThales Fraga\n-->YOU<--\n\nScript made by:\nThales Fraga\n\nSpecial thanks to:")
                    .font(Font.custom("JustMeAgainDownHere", size: 36))
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: 550, height: 2*UIScreen.main.bounds.height, alignment: .center)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { _ in
                            withAnimation(.linear(duration: 10)) {
                                isTextHidden = false
                            }
                        }
                    }
                Image("thanks")
            }
            .offset(y: isTextHidden ? 1.5*UIScreen.main.bounds.height : -UIScreen.main.bounds.height)
            .onChange(of: isTextHidden) { _ in
                withAnimation(.linear(duration: 15)) {
                    //                self.isTextHidden = true
                }
            }
        }
        
    }
}
