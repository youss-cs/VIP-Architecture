//
//  OperationsViewController.swift
//  TestProject
//
//  Created by Nabil EL KHADDARI on 28/02/2019.
//  Copyright (c) 2019 Nabil EL KHADDARI. All rights reserved.
//

import UIKit


// MARK: - Protocols
protocol OperationsDisplayLogic: class
{
    func displayOperation(viewModel: Operations.List.ViewModel)
}


class OperationsViewController: UITableViewController, OperationsDisplayLogic
{
    // MARK: - Properties
    var interactor  :   OperationsBusinessLogic?
    var router      :   (NSObjectProtocol & OperationsRoutingLogic & OperationsDataPassing)?
    var operations  =   [Operations.Operation]()
    
    // MARK: - Initialization
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.setup()
    }
  
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        self.setup()
    }
  
    
    // MARK: - View lifecycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "OperationsViewCell", bundle: nil), forCellReuseIdentifier: "cellId")
        self.title = "Operations"
        self.getOperation()
    }
    
    
    // MARK: - Methods
    private func setup()
    {
        let viewController          =   self
        let interactor              =   OperationsInteractor()
        let presenter               =   OperationsPresenter()
        let router                  =   OperationsRouter()
    
        viewController.interactor   =   interactor
        viewController.router       =   router
    
        interactor.presenter        =   presenter
        presenter.viewController    =   viewController
        router.viewController       =   viewController
        router.dataStore            =   interactor
    }
    
    func getOperation()
    {
    
        self.interactor!.getOperations()
        
    }
    
    
    // MARK: - Display logic methods
    func displayOperation(viewModel: Operations.List.ViewModel)
    {
        operations = viewModel.operations!
        print(operations)
    }
  
  
    // MARK: - Routing
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let scene = segue.identifier
        {
            let selector    =   NSSelectorFromString("routeTo\(scene)WithSegue:")
            
            if let router = router, router.responds(to: selector)
            {
                router.perform(selector, with: segue)
            }
        }
    }
}

extension OperationsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return operations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! OperationsViewCell
        cell.operation = operations[indexPath.row]
        return cell
    }
}
