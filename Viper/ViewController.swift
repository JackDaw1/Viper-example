//
//  ViewController.swift
//  Viper
//
//  Created by Galina Iaroshenko on 11.12.2022.
//

import UIKit

protocol IView : AnyObject {
    func printData(data: Any?)
    
    var presenter: ISomePresenter? {get set}
}

class ViewController: UIViewController {
    var presenter: ISomePresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func printData(data: Any?) {
        print(data)
    }
    
}

