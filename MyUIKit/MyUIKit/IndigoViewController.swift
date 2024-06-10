//
//  IndigoViewController.swift
//  MyUIKit
//
//  Created by JK on 6/10/24.
//

import UIKit

class IndigoViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    var inputName: String = ""
    var friends: [People] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = friends.first?.name


    }
    



}
