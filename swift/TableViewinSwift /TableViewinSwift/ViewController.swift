//
//  ViewController.swift
//  TableViewinSwift
//
//  Created by Pedro Almeida on 17/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
    }
   
    @IBAction func ChangeView(_ sender: UIButton) {
        let TableViewController = TableViewController(nibName: "TableViewController", bundle: nil)
        self.navigationController?.pushViewController(TableViewController, animated: true)
    }
    

}

