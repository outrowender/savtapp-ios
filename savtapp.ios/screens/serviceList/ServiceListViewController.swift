//
//  ServiceViewController.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 25/02/22.
//

import UIKit

class ServiceListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UINavigationBarDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let list = ["banana", "cachorro", "cluher","banana", "cachorro", "cluher","banana", "In order for the table view to do this, you must also provide an estimatedRowHeight. In this case, 600 is just an arbitrary value that works well in this particular instance. For your own projects, you should pick a value that better conforms to the type of data that you’ll display.", "cluher"]
    
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
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.navigationBar.topItem?.title = "Serviços"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let model = ServiceModel(id: indexPath.row, title: "Cell title", time: "10h22", username: "Wender Patrick", usernameEmoji: "🤡" , detail: list[indexPath.row])
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ServiceCell", for: indexPath) as! ServiceTableViewCell
        
        cell.update(for: model)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        openServiceModal()
    }
    
    func openServiceModal(){
        let serviceView = ServiceDetailViewController()
        
        serviceView.updateValues(values: "coisa nossa")
        
        let height = serviceView.view.frame.size.height
                
        let customSize: UISheetPresentationController.Detent = ._detent(withIdentifier: "serviceView", constant: height)

        if let sheet = serviceView.sheetPresentationController {
            sheet.detents = [customSize]
            sheet.prefersGrabberVisible = true
        }
        self.navigationController?.present(serviceView, animated: true, completion: nil)
    }
    
}
