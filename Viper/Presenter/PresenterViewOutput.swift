//
//  SomePresenter.swift
//  Viper
//
//  Created by Galina Iaroshenko on 11.12.2022.
//

import Foundation

class PresenterViewOutput : PresenterViewOutputProtocol {
    weak var view: IView?
    
    func doSomeLogic() {
        //call network logic
        view?.printData(data: "Data")
    }
}

protocol PresenterViewOutputProtocol : AnyObject {
    func doSomeLogic()
    var view: IView? {get set}
}
