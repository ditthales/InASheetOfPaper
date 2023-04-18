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
            VStack{
                Text("This experience was made by Thales Fraga especially for apple's WWDC Student Challenge 2023.\n\nRoyalties free sounds made by:\nasklfakslf.io\n\nIllustrations made by:\nThales Fraga\n-->YOU<--\n\nScript made by:\nThales Fraga\n\nSpecial thanks to:")
                    .font(Font.custom("JustMeAgainDownHere", size: 36))
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: 510, height: 2*UIScreen.main.bounds.height, alignment: .center)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { _ in
                            withAnimation(.linear(duration: 10)) {
                                isTextHidden = false
                            }
                        }
                    }
                Image("thanks")
            }
            .offset(y: isTextHidden ? UIScreen.main.bounds.height : -UIScreen.main.bounds.height)
            .onChange(of: isTextHidden) { _ in
                withAnimation(.linear(duration: 15)) {
                    //                self.isTextHidden = true
                }
            }
        }
        
    }
}
