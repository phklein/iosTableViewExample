//
//  TableViewCell.swift
//  TableViewinSwift
//
//  Created by Pedro Almeida on 17/08/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var imgAtivo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
