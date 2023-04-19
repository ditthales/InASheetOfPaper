import SwiftUI

struct GameView: View{
    
    @State var myGameRules: Game = Game.getGameInfos()[Game.currentIndex]
    let images = Draw.getDraws()
    let colorBlack = Color.black
    @State private var isTheEnd: Bool = false
    var body: some View{
        
       
        ZStack{
            Color.black
            
            if !isTheEnd{
                GeometryReader{geo in
                    VStack( alignment: .center, spacing: 0){
                        Spacer()
                        HStack(alignment: .bottom ,spacing: 40){
                            if myGameRules.showImage[0]{
                                if myGameRules.isVinsDraws{
                                    Image(images[0].name)
                                }else{
                                    Image(uiImage: Game.userDraws[0])
                                }
                            }else{
                                Rectangle()
                                    .foregroundColor(colorBlack)
                                    .frame(width: images[0].size.width, height: images[0].size.height)
                            }
                            VStack(spacing: 0){
                                
                                if myGameRules.showImage[2]{
                                    if myGameRules.isVinsDraws{
                                        Image(images[2].name)
                                    }else{
                                        Image(uiImage: Game.userDraws[1])
                                    }
                                    
                                }else{
                                    Rectangle()
                                        .foregroundColor(colorBlack)
                                        .frame(width: images[2].size.width, height: images[2].size.height)
                                }
                                
                                if myGameRules.showImage[1]{
                                    Image(images[1].name)
                                }else{
                                    Rectangle()
                                        .foregroundColor(colorBlack)
                                        .frame(width: images[1].size.width, height: images[1].size.height)
                                }
                            }
                            
                            if myGameRules.showImage[3]{
                                if myGameRules.isVinsDraws{
                                    Image(images[3].name)
                                }else{
                                    Image(uiImage: Game.userDraws[0])
                                }
                                
                            }else{
                                Rectangle()
                                    .foregroundColor(colorBlack)
                                    .frame(width: images[3].size.width, height: images[3].size.height)
                            }
                            
                            if myGameRules.showImage[4]{
                                if myGameRules.isVinsDraws{
                                    Image(images[4].name)
                                }else{
                                    Image(uiImage: Game.userDraws[2])
                                }
                                
                            }else{
                                Rectangle()
                                    .foregroundColor(colorBlack)
                                    .frame(width: images[4].size.width, height: images[4].size.height)
                            }
                            
                            if myGameRules.showImage[5]{
                                if myGameRules.isVinsDraws{
                                    Image(images[5].name)
                                }else{
                                    Image(uiImage: Game.userDraws[0])
                                }
                                
                            }else{
                                Rectangle()
                                    .foregroundColor(colorBlack)
                                    .frame(width: images[5].size.width, height: images[5].size.height)
                            }
                            
                            VStack{
                                
                                ZStack{
                                    if myGameRules.showImage[6]{
                                        Image(images[6].name)
                                    }else{
                                        Rectangle()
                                            .foregroundColor(colorBlack)
                                            .frame(width: images[6].size.width, height: images[6].size.height)
                                    }
                                    
                                    if myGameRules.showImage[7]{
                                        if myGameRules.isVinsDraws{
                                            Image(images[7].name)
                                                .padding(.top, 15)
                                        }else{
                                            Image(uiImage: Game.userDraws[3])
                                                .padding(.top, 15)
                                        }
                                        
                                    }else{
                                        Rectangle()
                                            .foregroundColor(colorBlack)
                                            .frame(width: images[7].size.width, height: images[7].size.height)
                                            .padding(.top, 44)
                                    }
                                }
                                
                                Rectangle()
                                    .foregroundColor(.black)
                                    .frame(width: images[6].size.width, height: images[6].size.height/2)
                                
                            }
                            
                            if myGameRules.showImage[8]{
                                if myGameRules.isVinsDraws{
                                    if myGameRules.flipImage{
                                        Image(images[8].name)
                                            .scaleEffect(x: -1, y: 1, anchor: .center)
                                    }else{
                                        Image(images[8].name)
                                    }
                                   
                                }else{
                                    if myGameRules.flipImage{
                                        Image(uiImage: Game.userDraws[0])
                                            .scaleEffect(x: -1, y: 1, anchor: .center)
                                    }else{
                                        Image(uiImage: Game.userDraws[0])
                                    }
                                    
                                }
                                
                            }else{
                                Rectangle()
                                    .foregroundColor(colorBlack)
                                    .frame(width: images[8].size.width, height: images[8].size.height)
                            }
                            
                        }
                        .padding(.leading, 33)
                        
                        Image("baseline")
                            .resizable()
                            .frame(width: geo.size.width, height: 17)
                        HStack(spacing: 48){
                            Text(myGameRules.bottomText)
                                .foregroundColor(.white)
                                .lineLimit(3)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .font(Font.custom("JustMeAgainDownHere", size: 36))
                                .frame(height: 180, alignment: .center)
                                .padding(.bottom, 33)
                                .padding(.top, 17)
                            
                            Spacer()
                            
                            if myGameRules.changeScreen{
                                if Game.currentIndex == Game.getGameInfos().count - 1{
                                    Button {
                                        isTheEnd.toggle()
                                    } label: {
                                        Image("nextButton")
                                    }
                                }else{
                                    NavigationButton {
                                        Game.currentIndex += 1
                                    } destination: {
                                        CanvasView()
                                    } label: {
                                        Image("nextButton")
                                    }
                                }
                            }else{
                                Button{
                                    Game.currentIndex += 1
                                    myGameRules = Game.getGameInfos()[Game.currentIndex]
                                    
                                }label: {
                                    Image("nextButton")
                                }
                            }
                        }
                        .padding(.horizontal, 50)
                    }
                }
            }
            
            if isTheEnd{
                
                FinalView()
                
                CreditsView()
                
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
    }
}
//}
