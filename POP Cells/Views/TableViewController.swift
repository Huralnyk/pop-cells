//
//  TableViewController.swift
//  POP Cells
//
//  Created by Oleksii Huralnyk on 5/14/18.
//  Copyright © 2018 Oleksii Huralnyk. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(PersonTableViewCell.self)
    }
    
}

extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell() as PersonTableViewCell
        return cell
    }

}
