//
//  FirstViewController.swift
//  AnimateToDo
//
//  Created by Marcy Vernon on 5/29/20.
//  Copyright © 2020 Marcy Vernon. All rights reserved.


import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let tableData                      = Data.list
    let preferredColorRangeIndex : Int = ColorSettings.preferredRange
    let colorRange                     = ColorSettings.colorRange
    let cellReuseIdentifier            = "cell"
    let segueIdentifier                = "GoToSecondVC"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView(tableView, cellReuseIdentifier: cellReuseIdentifier)
    }
    
    func setupTableView(_ tableView: UITableView, cellReuseIdentifier: String) {
        tableView.delegate   = self
        tableView.dataSource = self
        tableView.separatorStyle  = UITableViewCell.SeparatorStyle.none
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        tableView.register(TableCell.self, forCellReuseIdentifier: cellReuseIdentifier)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.animateTable()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! SecondViewController
        
        if let indexPath = tableView.indexPathForSelectedRow {
            destinationVC.tableData = Data.list[indexPath.row].detail
        }
    }
} //end of FirstViewController


extension FirstViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Data.rowHeight
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellReuseIdentifier, for: indexPath)
        cell.backgroundColor = colorforIndex(indexPath.row, count: tableData.count, colorRange: colorRange[preferredColorRangeIndex])
        cell.textLabel?.text = self.tableData[indexPath.row].name
        cell.textLabel?.setAlphaBasedOnInterfaceStyle()

        return Data.updateCell(cell)
    }
}


extension FirstViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: segueIdentifier, sender: nil)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.textLabel?.textColor = Data.textColor
    }
}


