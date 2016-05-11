//
//  TableViewController.swift
//  Marvel
//
//  Created by Pepe Becerra on 5/10/16.
//  Copyright © 2016 Pepe Becerra. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    let diasSemana:[String] =  ["Lunes","Martes","Miercoles","Jueves","Viernes","Sábado","Domingo"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return diasSemana.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        // Configure the cell...
        
        cell.textLabel?.text = diasSemana[indexPath.row] // INDEXPATH.ROW ES EL ÍNDICE DE LA FILA QUE SE CARGA
        

        return cell
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //
        print(indexPath.section)
        print(diasSemana[indexPath.row])
    }

}
