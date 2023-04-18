//
//  FinalView.swift
//  In a Sheet of Paper
//
//  Created by ditthales on 18/04/23.
//

import SwiftUI

struct FinalView: View {
    @State private var isGrowing = false
    
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.white.opacity(0.4))
                .scaleEffect(isGrowing ? 50 : 0.1)
                .animation(.easeInOut(duration: 4), value: isGrowing)
                .onAppear {
                    self.isGrowing = true
                }
            Circle()
                .fill(Color.white.opacity(0.6))
                .scaleEffect(isGrowing ? 50 : 0.1)
                .animation(.easeInOut(duration: 5), value: isGrowing)
                .onAppear {
                    self.isGrowing = true
                }
            Circle()
                .fill(Color.white)
                .scaleEffect(isGrowing ? 50 : 0.1)
                .animation(.easeInOut(duration: 6), value: isGrowing)
                .onAppear {
                    self.isGrowing = true
                }
        }
        
    }
}


struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView()
    }
}
