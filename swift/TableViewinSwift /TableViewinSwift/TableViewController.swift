//
//  TableViewController.swift
//  TableViewinSwift
//
//  Created by Pedro Almeida on 17/08/21.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate, UITableViewDataSource   {
   
    @IBOutlet weak var lblQtq: UILabel!
    @IBOutlet weak var outTV: UITableView!
    let testeSubject = "PETR4"
    
    var array:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
         array = ["PETR4", "APPL34","GMCO34","PETR4","MGLU3","MSFT34", "PETR4","OIBR3","ITASA4","AMER3","ABEV3","PETR4","TOTS3","SNEC34","PETR4","HPQB34","PETR4","ATVI34","UBI","PETR4"]
        self.registerNibs()
        lblQtq.text = String.localizedStringWithFormat("você possui %lu ativos na carteira", array.count)
        
        
    }
    @IBAction func btnBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dontPaintTheFirstLine = indexPath.row + 1
        if (dontPaintTheFirstLine % 4 == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell")
            return cell!
        }
        else{
            let cell: FirstTableViewCell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell") as! FirstTableViewCell
            cell.lblText.text = array[indexPath.row]
            cell.imgAtv.image = UIImage(named: array[indexPath.row])
            if(array[indexPath.row] == testeSubject){
                cell.backgroundColor = UIColor.red
                cell.contentView.backgroundColor = UIColor.red
            }
            else{
                cell.backgroundColor = UIColor.darkGray
                cell.contentView.backgroundColor = UIColor.darkGray
            }
            return cell
        }
    }
    
    
    func registerNibs(){
        self.outTV.register(UINib(nibName: "FirstTableViewCell", bundle: nil), forCellReuseIdentifier: "FirstTableViewCell")
        self.outTV.register(UINib(nibName: "SecondTableViewCell", bundle: nil), forCellReuseIdentifier: "SecondTableViewCell")
    }
    
    
    
    
    }

