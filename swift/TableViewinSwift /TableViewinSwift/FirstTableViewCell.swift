//
//  FirstTableViewCell.swift
//  TableViewinSwift
//
//  Created by Pedro Almeida on 17/08/21.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    @IBOutlet weak var imgAtv: UIImageView!
    @IBOutlet weak var lblText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
