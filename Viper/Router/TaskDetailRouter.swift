//
//  TaskDetailRouter.swift
//  Viper
//
//  Created by Galina Iaroshenko on 12.12.2022.
//
/*
import UIKit

class TaskDetailRouter: TaskDetailRouterProtocol {
    
    func navigateBackToListViewController(from view: TodoDetailViewProtocol) {
        guard let viewVC = view as? UIViewController else {
            fatalError("Invalid view protocol type")
        }
        viewVC.navigationController?.popViewController(animated: true)
    }
    
    static func createTodoDetailRouterModule(with todo: TodoItem) -> UIViewController {
        
        guard let todoDetailVC = storyboard.instantiateViewController(withIdentifier: "TodoDetailViewController") as? TodoDetailViewController else {
            fatalError("Invalid view controller type")
        }
        
        let presenter: TodoDetailPresenter & TodoDetailInteractorOutputProtocol = TodoDetailPresenter()
        todoDetailVC.presenter = presenter
        presenter.view = todoDetailVC
        let interactor: TodoDetailInteractorInputProtocol = TodoDetailInteractor()
        interactor.todoItem = todo
        interactor.presenter = presenter
        presenter.interactor = interactor
        let router: TodoDetailRouterProtocol = TodoDetailRouter()
        presenter.router = router
        
        return todoDetailVC
    }
    
    static var storyboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
}

*/
