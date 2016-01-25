//
//  StoryboardIdentifier.swift
//  Condominio
//
//  This class makes a storyboardIdentifier variable to every UIViewController
//  to prevent errors when using strings to instatiate a controller.
//
//  Created by Edgar Cardoso on 1/25/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(self)
    }
}

extension UIViewController: StoryboardIdentifiable { }