//
//  OperationViewCell.swift
//  TestProject
//
//  Created by YouSS on 3/15/19.
//  Copyright © 2019 Nabil EL KHADDARI. All rights reserved.
//

import UIKit

class OperationsViewCell: UITableViewCell {

    @IBOutlet weak var libelle: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var date: UILabel!
    
    var operation: Operations.Operation? {
        didSet {
            guard let operation = operation else { return }
            libelle.text = operation.libelle
            amount.text = String(operation.amount)
            date.text = operation.valueDate
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
