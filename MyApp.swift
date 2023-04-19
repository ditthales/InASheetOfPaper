import SwiftUI

@main
struct MyApp: App {
    
    init() {
        CustomFonts.register()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                CreditsView()
                    .onAppear{
                        MusicPlayer.shared.play()
                    }
            }.navigationViewStyle(.stack)
        }
    }
}
