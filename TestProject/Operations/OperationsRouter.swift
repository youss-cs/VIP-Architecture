//
//  OperationsRouter.swift
//  TestProject
//
//  Created by Nabil EL KHADDARI on 28/02/2019.
//  Copyright (c) 2019 Nabil EL KHADDARI. All rights reserved.
//


import UIKit


// MARK: - Protocols
@objc protocol OperationsRoutingLogic
{
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol OperationsDataPassing
{
    var dataStore   :   OperationsDataStore? { get }
}


class OperationsRouter: NSObject, OperationsRoutingLogic, OperationsDataPassing
{
    // MARK: - Properties
    weak var viewController     :   OperationsViewController?
    var dataStore               :   OperationsDataStore?
  
    
//    // MARK: - Routing
//    func routeToSomewhere(segue: UIStoryboardSegue?)
//    {
//        if let segue = segue
//        {
//            let destinationVC   =   segue.destination as! SomewhereViewController
//            var destinationDS   =   destinationVC.router!.dataStore!
//            
//            passDataToSomewhere(source: dataStore!, destination: &destinationDS)
//        }
//        else
//        {
//            let storyboard      =   UIStoryboard(name: "Main", bundle: nil)
//            let destinationVC   =   storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
//            var destinationDS   =   destinationVC.router!.dataStore!
//            
//            passDataToSomewhere(source: dataStore!, destination: &destinationDS)
//            navigateToSomewhere(source: viewController!, destination: destinationVC)
//        }
//    }
//
//    
//    // MARK: - Navigation
//    func navigateToSomewhere(source: OperationsViewController, destination: SomewhereViewController)
//    {
//        source.show(destination, sender: nil)
//    }
//  
//   
//    // MARK: - Passing data
//    func passDataToSomewhere(source: OperationsDataStore, destination: inout SomewhereDataStore)
//    {
//        destination.name    =   source.name
//    }
}
