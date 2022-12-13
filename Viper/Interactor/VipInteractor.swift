//
//  VipInteractor.swift
//  Viper
//
//  Created by Galina Iaroshenko on 11.12.2022.
//
/*
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
 */

import Foundation

protocol IVipInteractor: AnyObject {
    var presenter: IVipPresenter? {get set}
    
    func loadData()
}

class VipInteractor : IVipInteractor {
    var presenter: IVipPresenter?
    
    //weak var view: IVipVC?
    //?
    func loadData() {
        //success
        let response = LoadData.Response.success(data: "Some")
        presenter?.setupData(data: response)
    }
    
    func retrieveTasks() {
        IVipPresenter?.didRetrieveTasks(tasks)
    }
    
    func saveTask(_ task: TaskItem) {
        taskStore.addTask(task)
        IVipPresenter?.didAddTask(task)
    }
    
    func deleteTask(_ task: TaskItem) {
        taskStore.removeTask(task)
        IVipPresenter?.didRemoveTask(task)
    }
}
