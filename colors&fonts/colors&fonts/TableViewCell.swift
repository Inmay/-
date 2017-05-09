//
//  TableViewCell.swift
//  colors&fonts
//
//  Created by WuYueFeng on 2017/5/9.
//  Copyright © 2017年 WuYueFeng. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var fontname: UILabel!
    @IBOutlet weak var fontname2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
