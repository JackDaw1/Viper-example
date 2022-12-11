//
//  SomePresenter.swift
//  Viper
//
//  Created by Galina Iaroshenko on 11.12.2022.
//

import Foundation

class SomePresenter : ISomePresenter {
    weak var view: IView?
    
    func doSomeLogic() {
        //call network logic
        view?.printData(data: "Data")
    }
}

protocol ISomePresenter : AnyObject {
    func doSomeLogic()
    var view: IView? {get set}
}
