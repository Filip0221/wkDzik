//
//  ButtonHome.swift
//  wkDzik
//
//  Created by Filip Skup on 18/12/2023.
//

import UIKit
import SwiftUI

struct ButtonHome: Identifiable {
    var id = UUID()
    var imageName: String
    var buttonText: String
    var destinationView: AnyView
    
    init(imageName: String, buttonText: String, destinationView: AnyView) {
        self.imageName = imageName
        self.buttonText = buttonText
        self.destinationView = destinationView
    }
}
