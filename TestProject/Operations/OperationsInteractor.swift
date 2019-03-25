//
//  OperationsInteractor.swift
//  TestProject
//
//  Created by Nabil EL KHADDARI on 28/02/2019.
//  Copyright (c) 2019 Nabil EL KHADDARI. All rights reserved.
//


import UIKit


// MARK: - Protocols
protocol OperationsBusinessLogic
{
    func getOperations()
}

protocol OperationsDataStore
{
    //var name: String { get set }
}


class OperationsInteractor: OperationsBusinessLogic, OperationsDataStore
{
    // MARK: - Properties
    var presenter   :   OperationsPresentationLogic?
    var worker      :   OperationsWorker?
    //var name: String = ""
  
    
    // MARK - Business logic methods
    func getOperations()
    {
        self.worker          =   OperationsWorker()
        self.worker?.loadOperation(onComplete: { (response) in
            self.presenter?.presentOperation(response: response)
        })
    
        
    }
    
}
