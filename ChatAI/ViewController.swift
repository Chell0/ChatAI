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
        view.addSubview(field)
        NSLayoutConstraint.activate([
            field.heightAnchor.constraint(equalToConstant: 50),
            field.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            field.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            field.bottomAnchor.constraint(equalTo: view.keyboardLayoutGuide.topAnchor)
        ])
    }


}

