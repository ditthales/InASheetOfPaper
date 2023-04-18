
import SwiftUI

struct CanvasView: View {
    
    @State var myGameRules: Game = Game.getGameInfos()[Game.currentIndex]
    let draw = Draw.getDraws()
    @State var baseImage: Image?
    @ObservedObject private var viewModel = CanvasViewModel()
    
    
    var body: some View {
        ZStack(alignment: .center){
            
            Color.black
            
            
            Image(myGameRules.baseImage)
            
            
            DrawingCanvas(canvasView: $viewModel.canvasView)
            
            
            
            VStack{
                
                Text(myGameRules.bottomText)
                    .foregroundColor(.white)
                    .lineLimit(3)
                    .multilineTextAlignment(.center)
                    .font(Font.custom("JustMeAgainDownHere", size: 36))
                    .frame(width: 750, alignment: .center)
                
                
                Spacer()
                
                
                
                HStack(alignment: .bottom, spacing: 0) {
                    
                    ClearButton { 
                        viewModel.clearDrawing()
                        
                    }
                    
                    Spacer()
                    
                    NavigationButton {
                        viewModel.doneButtonPressed()
                    } destination: {
                        GameView()
                    } label: {
                        Image("doneButtom")
                    }

                    
                    
                }
            }.padding(.horizontal, 32)
                .padding(.vertical, 48.0)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
    }
    
    
    
    
}

struct Canvas_Previews: PreviewProvider {
    static var previews: some View {
        ClearButton(actionForDone: {
            
        })
    }
}
