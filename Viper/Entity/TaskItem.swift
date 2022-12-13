//
//  TaskItem.swift
//  Viper
//
//  Created by Galina Iaroshenko on 12.12.2022.
//

import Foundation
//import Cocoa

class Task {
    
    var title: String
    var customer: String?
    var price: Double?
    var numberOfSigns: Int?
    var status: Bool?
    var time: Double?

    init(title: String, customer: String) {
        self.title = title
        self.customer = customer
    }
    
}
/*
 protocol Builder {
 func
 }
 
 class TaskBuilder: Builder {
 
 var task: Task = Task()
 
 
 }
 */
