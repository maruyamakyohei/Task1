//
//  AddressTableViewCell.swift
//  Task1
//
//  Created by TechLanb.4 on 2018/03/03.
//  Copyright © 2018年 TechLanb.4. All rights reserved.
//

import UIKit

class AddressTableViewCell: UITableViewCell {

    // MARK: - IBOutlet
    @IBOutlet weak var address: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
