//
//  OperationsModels.swift
//  TestProject
//
//  Created by Nabil EL KHADDARI on 28/02/2019.
//  Copyright (c) 2019 Nabil EL KHADDARI. All rights reserved.
//


import UIKit


enum Operations
{
    // MARK: - Use cases
    struct Operation : Codable {
        let currencyCode    : Int
        let operationDate   : String
        let valueDate       : String
        let libelle         : String
        let amount          : Double
    }
    enum List
    {
        struct Request
        {
            //
        }
        
        struct Response : Codable
        {
           var operations : [Operation]?
        }
        
        struct ViewModel
        {
            var operations : [Operation]?
        }
    }
}
