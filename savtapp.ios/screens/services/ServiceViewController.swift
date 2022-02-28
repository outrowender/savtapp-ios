//
//  ServiceViewController.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 25/02/22.
//

import UIKit

class ServiceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UINavigationBarDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var navItem: UINavigationItem!
    
    
    let list = ["banana", "cachorro", "cluher","banana", "cachorro", "cluher","banana", "cachorro", "cluher","banana", "cachorro", "cluher","banana", "cachorro", "cluher","banana", "cachorro", "cluher","banana", "cachorro", "cluher","banana", "cachorro", "cluher","banana", "cachorro", "cluher","banana", "cachorro", "cluher","banana", "cachorro", "cluher","banana", "cachorro", "cluher","banana", "cachorro", "cluher","banana", "cachorro", "cluher","banana", "In order for the table view to do this, you must also provide an estimatedRowHeight. In this case, 600 is just an arbitrary value that works well in this particular instance. For your own projects, you should pick a value that better conforms to the type of data that you’ll display.", "cluher"]
    
    override func viewDidLoad() {
        configureTableView()
        configureNavigationBar()
        
        super.viewDidLoad()
    }
    
    func position(for bar: UIBarPositioning) -> UIBarPosition {
        return .topAttached
    }
    
    
    
    func configureTableView(){
        let nib = UINib(nibName: "ServiceTableViewCell", bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: "ServiceCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
        
    }
    
    func configureNavigationBar(){
        navigationBar.delegate = self
        navigationBar.prefersLargeTitles = true
        navItem.largeTitleDisplayMode = .automatic
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let model = ServiceModel(title: "Cell title", time: "10h22", detail: list[indexPath.row], username: "Wender Patrick")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ServiceCell", for: indexPath) as! ServiceTableViewCell
        
        cell.update(for: model)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
