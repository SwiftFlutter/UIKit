//
//  MyTableViewController.swift
//  MyUIKit
//
//  Created by JK on 6/9/24.
//

import UIKit

class MyTableViewController: UIViewController {


    @IBOutlet weak var myTableView: UITableView!
    let cellData = ["Hello TableView", "This is UIKit", "Welcome"]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        configureTableView()



    }

    func configureTableView() {
        myTableView.backgroundColor = .green
        myTableView.delegate = self
        myTableView.dataSource = self
    }

}



extension MyTableViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = cellData[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        if indexPath.row == 0 {
            return 100
        } else {
            return 60.0
        }

    }



}

