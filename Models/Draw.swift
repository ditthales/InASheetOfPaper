import SwiftUI

struct Draw{
    let name: String
    let size: CGSize
}

extension Draw{
    static func getDraws() -> [Draw]{
        return [
            Draw(name: "perso",
                 size: CGSize(width: 88,
                              height: 204)),
            Draw(name: "table",
                 size: CGSize(width: 162,
                              height: 97)),
            Draw(name: "draw1",
                 size: CGSize(width: 57 ,
                              height: 120)),
            Draw(name: "perso",
                 size: CGSize(width: 88,
                              height: 204)),
            Draw(name: "pet",
                 size: CGSize(width: 95,
                              height: 80)),
            Draw(name: "perso",
                 size: CGSize(width: 88,
                              height: 204)),
            Draw(name: "painting-moldure",
                 size: CGSize(width: 141,
                              height: 220)),
            Draw(name: "painting",
                 size: CGSize(width: 120,
                              height: 161)),
            Draw(name: "perso",
                 size: CGSize(width: 88,
                              height: 204)),
        ]
    }
}
