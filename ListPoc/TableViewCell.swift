//
//  TableViewCell.swift
//  ListPoc
//
//  Created by user140892 on 8/13/18.
//  Copyright © 2018 demo. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageViewThumbnail: UIImageView!
    @IBOutlet weak var labelVideoTitle: UILabel!
    
    func setRow(row: Row){
        imageViewThumbnail.image = row.image
        labelVideoTitle.text = row.title
    }
}
