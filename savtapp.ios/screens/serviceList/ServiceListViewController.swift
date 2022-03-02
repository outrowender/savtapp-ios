//
//  ServiceViewController.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 25/02/22.
//

import UIKit

class ServiceListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UINavigationBarDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var list: [ServiceModel]?
    
    override func viewDidLoad() {
        configureTableView()

        loadServices()
        
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configureNavigationBar()
        super.viewWillAppear(true)
    }
    
    func loadServices(){
        let serviceDatasource = ServiceDatasource()
        
        tableView.beginUpdates()
        list = serviceDatasource.getServices()
        tableView.endUpdates()
    }
    
    // MARK: View Configuration
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
        self.title = "Services"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

    // MARK: ServiceDetail modal
    func openServiceModal(service: ServiceModel){
        let serviceView = ServiceDetailViewController()
        serviceView.updateValues(for: service)
        serviceView.onConfirm = serviceConfirmed
        
        if #available(iOS 15.0, *) {
            // opens modal with custom size
            let height = serviceView.view.frame.size.height
            let customSize: UISheetPresentationController.Detent = ._detent(withIdentifier: "serviceView", constant: height)
            
            if let sheet = serviceView.sheetPresentationController {
                sheet.detents = [customSize]
                sheet.prefersGrabberVisible = true
            }
        }

        self.present(serviceView, animated: true, completion: nil)
    }
    
    func serviceConfirmed(){
        self.dismiss(animated: true, completion: nil)
        
        let reportView = ServiceReportViewController()
        
        self.navigationController?.setViewControllers([reportView], animated: true)
    }
    
    //MARK: - Delegate TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let list = list {
            return list.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ServiceCell", for: indexPath) as! ServiceTableViewCell
        
        if let list = list {
            cell.update(for: list[indexPath.row])
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        openServiceModal(service: list![indexPath.row])
    }
    
}
