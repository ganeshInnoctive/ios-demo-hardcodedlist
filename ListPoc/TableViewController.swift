//
//  ViewController.swift
//  ListPoc
//
//  Created by user140892 on 8/13/18.
//  Copyright © 2018 demo. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var list: [Row] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        list = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray() -> [Row]{
        var tempList: [Row] = []
        
        let row1 = Row(image: #imageLiteral(resourceName: "beginner-first-app"), title: "Your first app")
        let row2 = Row(image: #imageLiteral(resourceName: "dev-setup"), title: "Dev Setup")
        let row3 = Row(image: #imageLiteral(resourceName: "int-overview"), title: "iOS Interview")
        let row4 = Row(image: #imageLiteral(resourceName: "ss-delegates"), title: "Buttons in TableViews")
        let row5 = Row(image: #imageLiteral(resourceName: "ss-uipickerview-card"), title: "UIPicker Tutorial")
        let row6 = Row(image: #imageLiteral(resourceName: "dev-setup"), title: "Day in the life")
        
        tempList.append(row1)
        tempList.append(row2)
        tempList.append(row3)
        tempList.append(row4)
        tempList.append(row5)
        tempList.append(row6)
        
        return tempList
    }
}

extension TableViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = list[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell") as! TableViewCell
        cell.setRow(row: item)
        return cell
    }
}


































