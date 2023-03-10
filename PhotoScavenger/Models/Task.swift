import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite hiking spot",
                 description: "Be one with nature."),
            Task(title: "Your favorite cafe",
                 description: "Be one with the coffee beans."),
            Task(title: "Your favorite waterfall",
                 description: "Be one with the water.")
        ]
    }
}
