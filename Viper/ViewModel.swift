//
//  ViewModel.swift
//  Viper
//
//  Created by Galina Iaroshenko on 11.12.2022.
//

import Foundation

struct LoadData {
    struct LoadRequest {}
    
    enum Response {
        case success(data: Any)
        case failure(error: Error)
    }
    
    struct ViewModel {
        let dataToShow: String
    }
}
