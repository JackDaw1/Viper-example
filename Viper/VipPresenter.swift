//
//  VipPresenter.swift
//  Viper
//
//  Created by Galina Iaroshenko on 11.12.2022.
//

import Foundation

protocol IVipPresenter : AnyObject {
    var interactor: IVipInteractor? {get set}
    var view: IVipVC? {get set}
    
    func setupData(data: LoadData.Response)
    
    func loadData()
}

class VipPresenter : NSObject, IVipPresenter {
    func setupData(data: LoadData.Response) {
        switch data {
        case .success(let data):
            let model = LoadData.ViewModel(dataToShow: data as! String)
            view?.showData(data: model)
        default:
            break
        }
    }
    
    var interactor: IVipInteractor?
    
    weak var view: IVipVC?
    
    func doSome() {
        interactor?.loadData()
    }
    
    func loadData() {
        interactor?.loadData()
    }
    
    
}
