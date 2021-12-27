//
//  ControllerFactory.swift
//  Crypto Currency
//
//  Created by Aidar Bekturov on 13/12/21.
//

import UIKit

extension UIViewController {
    static func identifier() -> String {
        String(describing: self)
    }
    
    static func getVC(storyboardName: StoryBoards) -> UIViewController {
        let storyboard = UIStoryboard(name: storyboardName.rawValue, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: identifier())
        controller.modalPresentationStyle = .overFullScreen
        return controller
    }
}

enum StoryBoards: String {
    case Main
}
