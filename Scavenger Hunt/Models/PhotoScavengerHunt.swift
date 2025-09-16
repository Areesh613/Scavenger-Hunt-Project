//
//  Task.swift
//

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
            Task(title: "Find a fun shirt to wear",
                 description: "It can be a shirt with a cool logo, or even one with a funny joke"),
            Task(title: "Your favorite hiking spot",
                 description: "Where do you go to be one with nature?"),
            Task(title: "Your go-to brunch place",
                 description: "Where dp ypu go if you want to eat breakfast in the afternoon"),
            Task(title: "Find a fun shirt to wear",
                 description: "It can be a shirt with a cool logo, or even one with a funny joke")
        ]
    }
}
