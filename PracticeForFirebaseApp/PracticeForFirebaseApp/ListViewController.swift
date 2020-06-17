//
//  ListViewController.swift
//  PracticeForFirebaseApp
//
//  Created by Miki Kuromoto on 2020/06/08.
//  Copyright © 2020 Sky-Angel. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    
    override func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int { return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell" , for : indexPath)
        return cell
    }
}
