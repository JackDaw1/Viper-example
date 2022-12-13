//
//  TaskModuleViewProtocol.swift
//  Viper
//
//  Created by Galina Iaroshenko on 12.12.2022.
//
/*
import Foundation

protocol TaskModuleProtocol: class {
    
    var presenter: TaskModuleProtocol? { get set }
    
    // PRESENTER -> VIEW
    func showTasks(_ tasks: [TaskItem])
    func showErrorMessage(_ message: String)
}

protocol TaskModulePresenter: class {
    
    var view: TaskModuleProtocol? { get set }
    var interactor: TodoListInteractorInputProtocol? { get set }
    var router: TodoListRouterProtocol? { get set }
    
    // VIEW -> PRESENTER
    func viewWillAppear()
    func showTodoDetail(_ Todo: TodoItem)
    func addTodo(_ todo: TodoItem)
    func removeTodo(_ todo: TodoItem)
}

protocol TodoListInteractorInputProtocol: class {
    
    var presenter: TodoListInteractorOutputProtocol? { get set }
    
    // PRESENTER -> INTERACTOR
    func retrieveTodos()
    func saveTodo(_ todo: TodoItem)
    func deleteTodo(_ todo: TodoItem)
}

protocol TodoListInteractorOutputProtocol: class {
    
    // INTERACTOR -> PRESENTER
    func didAddTodo(_ todo: TodoItem)
    func didRemoveTodo(_ todo: TodoItem)
    func didRetrieveTodos(_ todos: [TodoItem])
    func onError(message: String)
}

protocol TodoListRouterProtocol: class {
    
    static func createTodoListModule() -> UIViewController
    
    // PRESENTER -> ROUTER
    func presentToDoDetailScreen(from view: TodoListViewProtocol, for todo: TodoItem)
}
*/
