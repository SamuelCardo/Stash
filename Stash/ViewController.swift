//
//  ViewController.swift
//  Stash
//
//  Created by SamuelCardo on 11/11/16.
//  Copyright © 2016 CUBiC digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.rowHeight = UITableViewAutomaticDimension
        table.estimatedRowHeight = 74.0
        self.table .reloadData()
    }
    
    override func viewDidLayoutSubviews() {
        self.table .reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5;
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath) as! AnimationCell
        cell.btnYes.layer.cornerRadius = cell.btnYes.frame.width/2.0;
        cell.btnYes.layer.masksToBounds = true
        cell.btnYes.layer.borderColor = UIColor.white.cgColor
        cell.btnYes.layer.borderWidth = 1.0
        cell.btnNo.layer.cornerRadius = cell.btnNo.frame.width/2.0;
        cell.btnNo.layer.masksToBounds = true
        
        cell.btnNo.layer.borderColor = UIColor.white.cgColor
        cell.btnNo.layer.borderWidth = 1.0
        return cell
    }
}

