//
//  ServiceListTableController.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 13/02/22.
//

import UIKit

class ServiceListTableViewController: UITableViewController {
    let services = ["geladeira", "Fogão", "Lâmpada"]
    
    override func viewDidLoad() {
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return services.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: services[indexPath.row])
        
        cell.textLabel?.text = services[indexPath.row]
        
        return cell
    }
}
