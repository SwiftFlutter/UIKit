//
//  MyViewController.swift
//  MyUIKit
//
//  Created by JK on 6/9/24.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var helloLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown

        // Do any additional setup after loading the view.
    }
    

    @IBAction func didTabButton(_ sender: Any) {

        if let name = nameTextField.text {
            helloLabel.text = "Hello \(name)"
        }
    }
    

}
