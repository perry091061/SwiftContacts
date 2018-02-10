//
//  TableViewCell.swift
//  SwiftContacts
//
//  Created by Perry Davies on 09/02/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var firstName:UILabel!
    @IBOutlet weak var lastName:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
