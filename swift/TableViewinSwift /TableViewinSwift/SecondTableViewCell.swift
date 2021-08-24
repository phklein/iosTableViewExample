//
//  SecondTableViewCell.swift
//  TableViewinSwift
//
//  Created by Pedro Almeida on 17/08/21.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        self.teste()
    }
    func teste(){
        print(1111)
    }
    
}
