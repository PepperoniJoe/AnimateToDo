//
//  SecondViewController.swift
//  AnimateToDo
//
//  Created by Marcy Vernon on 5/29/20.
//  Copyright © 2020 Marcy Vernon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var tableData                      = [String]()
    var preferredColorRangeIndex : Int = ColorSettings.preferredRange
    let colorRange                     = ColorSettings.colorRange
    let cellReuseIdentifier            = "cell2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView(tableView, cellReuseIdentifier: cellReuseIdentifier)
    }
    
    func setupTableView(_ tableView: UITableView, cellReuseIdentifier: String) {
        tableView.delegate   = self
        tableView.dataSource = self
        tableView.register(TableCell.self, forCellReuseIdentifier: cellReuseIdentifier)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.animateTable()
    }
} // end of SecondViewController


//MARK: Extension UITableViewDataSource
extension SecondViewController: UITableViewDataSource {
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        cell.textLabel?.textColor = Data.textColor
        cell.textLabel?.setAlphaBasedOnInterfaceStyle()
        cell.backgroundColor = colorforIndex(indexPath.row, count: tableData.count, colorRange: colorRange[preferredColorRangeIndex])
        cell.textLabel?.text = tableData[indexPath.row]
        return Data.updateCell(cell)
    }
}


//MARK: Extension UITableViewDelegate
extension SecondViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
       cell.textLabel?.textColor = Data.textColor
    }
}


