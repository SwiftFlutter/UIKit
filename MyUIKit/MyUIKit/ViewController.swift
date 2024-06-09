//
//  ViewController.swift
//  MyUIKit
//
//  Created by JK on 6/9/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!


    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()// 다 그리고 나서
        view.backgroundColor = .green
        // Do any additional setup after loading the view.
    }


    @IBAction func didMyButtonTapped(_ sender: Any) {
        myLabel.text = "Hello UIKit"
    }
}

