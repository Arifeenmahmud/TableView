//
//  ViewController.swift
//  Countries
//
//  Created by AppMakers on 01/07/2019.
//  Copyright © 2019 AppMakers. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    let countriesList = ["USA","UK","Italy","Russia","Spain","Canada","Australia","Finland"]

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       setupUITableView()
        
    }
    
    func setupUITableView() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib.init(nibName: "CountriesListTableViewCell", bundle: nil), forCellReuseIdentifier: "countriesListTableViewCellID")
        
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
       // tableView.separatorStyle = .none
        
        tableView.separatorColor = UIColor.lightGray
        
        //change tableViewHeader and Footer
        
        tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.bounds.width, height: 60))
        tableView.tableHeaderView?.backgroundColor = UIColor.gray
        
        let labelHeader = UILabel(frame: CGRect(x: 16, y: 18, width: 200, height: 20))
        labelHeader.textColor = UIColor.white
        labelHeader.textAlignment = .left
        labelHeader.text = "Countries".uppercased()
        tableView.tableHeaderView?.addSubview(labelHeader)
        
        
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.bounds.width, height: 60))
        tableView.tableFooterView?.backgroundColor = UIColor.black
        
        let labelFooter = UILabel(frame: CGRect(x: 16, y: 18, width: 200, height: 20))
        labelFooter.textColor = UIColor.white
        labelFooter.textAlignment = .left
        labelFooter.text = "Countries count: \(self.countriesList.count)"
        tableView.tableFooterView?.addSubview(labelFooter)
        
        
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return countriesList.count
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
       
        
        let country = countriesList[indexPath.row]
        
        
        if country == "USA" {
            
             return 80
            
        } else {
            
            return 40
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCell(withIdentifier: "countriesListTableViewCellID", for: indexPath) as! CountriesListTableViewCell
        
       cell.mainLabel.text = countriesList[indexPath.row]
        
        configureCell(cell)
        
        return cell
        
        
    }
    
    func configureCell(_ cell: UITableViewCell) {
        
        cell.backgroundColor = UIColor.blue
        
        if let countriesCell = cell as? CountriesListTableViewCell {
            
            countriesCell.mainLabel.textColor = UIColor.white
            
        }
        
        cell.tintColor = UIColor.red
        
        cell.accessoryType = .none
        
        
    }
    
    
    
}



