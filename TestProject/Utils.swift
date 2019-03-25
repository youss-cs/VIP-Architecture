//
//  Utils.swift
//  TestProject
//
//  Created by Nabil EL KHADDARI on 28/02/2019.
//  Copyright © 2019 Nabil EL KHADDARI. All rights reserved.
//

import Foundation
class Utils {
    static func readJSON(name: String) -> Data? {
        let bundle = Bundle(for: Utils.self)
        guard let url = bundle.url(forResource: name, withExtension: "json") else { return nil }
        
        do {
            let data = try Data(contentsOf: url, options: .mappedIfSafe)
            
            
            return data
        }
        catch {
            
            return nil
        }
    }
}
