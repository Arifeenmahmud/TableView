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
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib.init(nibName: "CountriesListTableViewCell", bundle: nil), forCellReuseIdentifier: "countriesListTableViewCellID")
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return countriesList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCell(withIdentifier: "countriesListTableViewCellID", for: indexPath) as! CountriesListTableViewCell
        
       cell.mainLabel.text = countriesList[indexPath.row]
        
        return cell
        
        
    }
    
    
    
}



