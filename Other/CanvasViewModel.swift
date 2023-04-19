
import SwiftUI
import PencilKit

// MARK: Variables to watch mark as Published. ViewModel also calls API/Core Data

final class CanvasViewModel: ObservableObject {
    @Published var myImage: UIImage = UIImage()
    @Published var canvasView = PKCanvasView()
    
    func doneButtonPressed() {
        print("ENTROU NO DONE BUTTON VM")
        getImageData() { image in
            self.myImage = image
            Game.userDraws.append(image)
            Game.currentIndex += 1
        }
    
    }
    
    func clearDrawing(){
        canvasView.drawing = PKDrawing()
    }
    
    func getImageData(completionHandler: @escaping (UIImage) -> Void){
        
        let drawingSize = canvasView.drawing.bounds.size
        let drawingRectInWindowCoords = canvasView.convert(canvasView.drawing.bounds, to: nil)
        let drawingTopLeftInWindowCoords = drawingRectInWindowCoords.origin
        var screenPoint: CGPoint?
        
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first {
            screenPoint = window.convert(drawingTopLeftInWindowCoords, to: UIScreen.main.coordinateSpace)
        }
        
        // Capturar a imagem do desenho
        let drawingRect = CGRect(origin: screenPoint!, size: drawingSize)
        let drawingImage = canvasView.drawing.image(from: drawingRect, scale: CGFloat(1.0))

        completionHandler(drawingImage)
    }
    
}

