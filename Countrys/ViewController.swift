//
//  ViewController.swift
//  Countrys
//
//  Created by Arifeen Mahmud on 5/6/20.
//  Copyright © 2020 Arifeen Mahmud. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    let countryList = ["Uk","USA","UAE","Itly","Bangladesh","Sapain","canada","Napal","India","Vutan","Nadarland","Soidearob","Iran","Pakistan","Mesor","Guatnama","Chili"]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupUITableView()
    }
    
    func setupUITableView() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//        tableView.separatorStyle = .none
        tableView.separatorColor = .green
    }


}

extension ViewController: UITabBarDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
                    
        let country = countryList[indexPath.row]
        
        if country == "Uk" {
            return 80
        }
        else {
            return 40
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)
        
        cell.textLabel?.text = countryList[indexPath.row]
        
        configureCell(cell)
        return cell
    }
    
    func configureCell(_ cell: UITableViewCell) {
        cell.backgroundColor = UIColor.systemBlue
        cell.textLabel?.textColor = UIColor.white
        cell.accessoryType = .detailDisclosureButton
        cell.tintColor = UIColor.green
        
    }
    
}
