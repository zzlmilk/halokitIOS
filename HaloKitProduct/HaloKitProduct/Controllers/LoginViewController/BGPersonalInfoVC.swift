//
//  BGPersonalInfoVC.swift
//  HaloKitProduct
//
//  Created by 范博 on 2017/6/29.
//  Copyright © 2017年 范博. All rights reserved.
//

import UIKit

class BGPersonalInfoVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(BGPersonalInfoheadIconCell.classForCoder(), forCellReuseIdentifier: BGPersonalInfoheadIconCell.cell_id)
        self.tableView.register(BGPersonalInfoheadIconCell.classForCoder(), forCellReuseIdentifier: BGPersonalInfoOthersCell.cell_id)
    }



    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            
            return BGPersonalInfoheadIconCell.returnCell_hight()
        default:
            
            return BGPersonalInfoheadIconCell.returnCell_hight()
            
        }
 
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = BGPersonalInfoheadIconCell.dequeueReusable(tableView, indexPath: indexPath)
//            cell.model = 
            return cell
        default:
            let cell = BGPersonalInfoheadIconCell.dequeueReusable(tableView, indexPath: indexPath)
//            cell.model =

            return cell
            
        }
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            break
        default:
            switch indexPath.row {
            case 0:
                break
            case 1:
                break
            case 2:
                break
            default:
               break
            }
            break
        }

    }

}
