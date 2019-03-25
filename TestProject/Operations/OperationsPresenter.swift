//
//  OperationsPresenter.swift
//  TestProject
//
//  Created by Nabil EL KHADDARI on 28/02/2019.
//  Copyright (c) 2019 Nabil EL KHADDARI. All rights reserved.
//


import UIKit


// MARK: - Protocols
protocol OperationsPresentationLogic
{
    func presentOperation(response: Operations.List.Response)
}


class OperationsPresenter: OperationsPresentationLogic
{
    // MARK: - Properties
    weak var viewController     :   OperationsDisplayLogic?
    
  
    // MARK: - Presentation logic methods
    func presentOperation(response: Operations.List.Response)
    {
        var viewModel   =   Operations.List.ViewModel()
        viewModel.operations = response.operations
        self.viewController?.displayOperation(viewModel: viewModel)
    }
    
    
    // MARK: - Private methods
}
