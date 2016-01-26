//
//  UIStoryboard+Storyboards.swift
//  Condominio
//
//  Created by Edgar Cardoso on 1/25/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    enum Storyboard : String {
        case Main
        case Condominio
    }
    
    convenience init(storyboard: Storyboard, bundle: NSBundle? = nil) {
        self.init(name: storyboard.rawValue, bundle: bundle)
    }

    func instantiateViewController<VC: UIViewController where VC: StoryboardIdentifiable>(_: VC.Type) -> VC {
        guard let viewController = self.instantiateViewControllerWithIdentifier(VC.storyboardIdentifier) as? VC else {
            fatalError("Couldn't instantiate view controller with identifier \(VC.storyboardIdentifier) ")
        }
        
        return viewController
    }
}