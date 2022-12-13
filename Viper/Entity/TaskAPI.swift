//
//  TaskStore.swift
//  Viper
//
//  Created by Galina Iaroshenko on 12.12.2022.
//

import Foundation

class TaskAPI {
    
    private init() {}
    public static let shared = TaskStore()
    
    public private(set) var tasks: [TaskItem] = [
        TaskItem(title: "Focus", content: "Decide on what you want to focus in your life"),
        TaskItem(title: "Value", content: "Decide on what values are meaningful in your life"),
        TaskItem(title: "Action", content: "Decide on what you should do to achieve empowering life")
    ]
    
    func addTask(_ task: TaskItem) {
        tasks.append(task)
    }
    /*
    func removeTask(_ todo: TaskItem) {
        if let index = tasks.firstIndex(where: { $0 === task }) {
            tasks.remove(at: index)
        }
    }
    */
}
