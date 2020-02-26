//
//  ViewController.swift
//  SplitVC
//
//  Created by Ruslan Filistovich on 26/02/2020.
//  Copyright © 2020 Ruslan Filistovich. All rights reserved.
//

import UIKit

class MasterController: UITableViewController {

    override func viewDidLoad() {
        self.tableView = UITableView(frame: .zero, style: .plain)
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "id")
        self.navigationItem.title = "Master"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "id")!
        cell.textLabel?.text = "\(indexPath)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let controller = DetailController()
       controller.navigationTitle = "\(indexPath)"
       self.showDetailViewController(UINavigationController(rootViewController: controller), sender: nil)
    }
}

class DetailController: UIViewController {

    var navigationTitle: String = "Detail"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = navigationTitle
        self.view.backgroundColor = .white
    }
}
