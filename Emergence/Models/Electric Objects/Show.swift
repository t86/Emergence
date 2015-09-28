import Gloss
import Representor

protocol Representable {
     func updateWithRepresentor(rep: Representor<HTTPTransition>)
}

struct Show: Showable, Thumbnailable {
    let name: String

    let installShots: [Imageable]
    let artworks: [Artworkable]

    var thumbnailImageFormatString: String
    var thumbnailImageVersions: [String]
}

extension Show: Decodable {
    init?(json: JSON) {
        guard let name: String = "name" <~~ json else {
            return nil
        }

        self.name = name
        artworks = []
        installShots = []
        thumbnailImageFormatString = ""
        thumbnailImageVersions = [""]
    }
}

extension Show: Representable {
    func updateWithRepresentor(rep: Representor<HTTPTransition>) {

    }
}