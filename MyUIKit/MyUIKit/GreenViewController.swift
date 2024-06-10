//
//  GreenViewController.swift
//  MyUIKit
//
//  Created by JK on 6/10/24.
//

import UIKit


struct People {
    let name: String
    let age: Int
}

class GreenViewController: UIViewController {
    //goNext



    var friends: [People] = [People(name: "리이오", age: 20)]

    @IBOutlet weak var insertNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goNext" {
            let viewController = segue.destination as! IndigoViewController
            viewController.inputName = insertNameTextField.text!
            viewController.friends = friends

        }
    }




}
