//
//  OperationsWorker.swift
//  TestProject
//
//  Created by Nabil EL KHADDARI on 28/02/2019.
//  Copyright (c) 2019 Nabil EL KHADDARI. All rights reserved.
//


import UIKit


class OperationsWorker
{
    // MARK: - Methods
    func loadOperation(onComplete:@escaping (_ response: Operations.List.Response)->())
    {
        var response  =  Operations.List.Response()
         do{
         response              =   try JSONDecoder().decode(Operations.List.Response.self, from: Utils.readJSON(name: "card_operation")!)
            onComplete(response)
         }catch{
            onComplete(response)
        }
    }
}
