//
//  ViewController.swift
//  ChatAI
//
//  Created by GMO on 15/12/2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let field: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Type here..."
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .red
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

