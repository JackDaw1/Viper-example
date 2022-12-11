//
//  VipInteractor.swift
//  Viper
//
//  Created by Galina Iaroshenko on 11.12.2022.
//

import Foundation

protocol IVipInteractor: AnyObject {
    var presenter: IVipPresenter? {get set}
    
    func loadData()
}

class VipInteractor : IVipInteractor {
    var presenter: IVipPresenter?
    
    //weak var view: IVipVC?
    
    func loadData() {
        //success
        let response = LoadData.Response.success(data: "Some")
        presenter?.setupData(data: response)
    }
}
