//
//  ListTableViewController.swift
//  SampleProject4
//
//  Created by Barath Ganesh Kumar on 11/06/21.
//

import UIKit

class ListTableViewController: UITableViewController {
    var websites = ["apple.com","google.com","hackingwithswift.com"]

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Pages"
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Page", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "Open") as? ViewController {
            vc.current = websites[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}
