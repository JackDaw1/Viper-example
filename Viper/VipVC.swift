//
//  VipVC.swift
//  Viper
//
//  Created by Galina Iaroshenko on 11.12.2022.
//

import UIKit

protocol IVipVC : AnyObject {
    var presenter: IVipPresenter? {get set}
    
    func showData(data: LoadData.ViewModel)
}

class VipVC: UIViewController, IVipVC {
    
    var presenter: IVipPresenter?
    
    func showData(data: LoadData.ViewModel) {
        print(data.dataToShow)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func loadData() {
        self.presenter?.loadData()
    }

}
