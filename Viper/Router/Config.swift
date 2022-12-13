//
//  Config.swift
//  Viper
//
//  Created by Galina Iaroshenko on 11.12.2022.
//

import Foundation
import UIKit

protocol IConfig : AnyObject {
    func createVC()->UIViewController?
}

class Config : IConfig {
    
    func createVC() -> UIViewController? {
        let view = ViewController()
        let presenter: ISomePresenter = SomePresenter()
        
        //?
        presenter.view = view as! any IView
        view.presenter = presenter
        return view
    }
}
