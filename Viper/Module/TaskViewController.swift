//
//  TaskViewController.swift
//  Viper
//
//  Created by Galina Iaroshenko on 12.12.2022.
//

import UIKit

protocol TasksViewInput: class {
    var output: TasksViewOutput? { get set }
    func reloadData()
}

protocol TasksViewOutput: class {
    func viewDidLoad()
    func didBack()
}


class TaskViewController: UITableViewController {
    
    var presenter: TaskModulePresenterProtocol?
    var tasks: [TaskItem] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    
    //private let task = TaskAPI.getTask() // model
    //let taskTableView = UITableView() // view
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        view.backgroundColor = .white
        view.addSubview(taskTableView)
        
        taskTableView.translatesAutoresizingMaskIntoConstraints = false
        taskTableView.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor).isActive = true
        taskTableView.leftAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leftAnchor).isActive = true
        taskTableView.rightAnchor.constraint(equalTo:view.safeAreaLayoutGuide.rightAnchor).isActive = true
        taskTableView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true
                
        taskTableView.dataSource = self
        taskTableView.delegate = self
        
        taskTableView.register(TaskTableViewCell.self, forCellReuseIdentifier: "taskCell")

        navigationItem.title = "Task"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as! TaskTableViewCell
        //cell.task = task[indexPath.row]
        let task = tasks[indexPath.row]
        cell.textLabel?.text = task.title
        cell.detailTextLabel?.text = task.content
        return cell
    }
    //?
    /*
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100
        }
     */
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let task = task[indexPath.row]
        presenter?.showTodoDetail(task)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let taskItem = tasks[indexPath.row]
            presenter?.removeTask(taskItem)
        }
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "Add Task Item", message: "Enter title and content", preferredStyle: .alert)
        alertController.addTextField(configurationHandler: nil)
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { [weak self](_) in
            let titleText = alertController.textFields![0].text ?? ""
            let contentText = alertController.textFields![1].text ?? ""
            guard !titleText.isEmpty else { return }
            let taskItem = TaskItem(title: titleText, content: contentText)
            self?.presenter?.addTask(taskItem)
        }))
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
}

extension TaskViewController: TaskModuleProtocol {
    
    func showTasks(_ tasks: [TaskItem]) {
        self.tasks = tasks
    }
    
    func showErrorMessage(_ message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }


    
}

