//
//  ViewController.swift
//  Dynamic Cells
//
//  Created by Rob Cornacchia on 6/5/15.
//  Copyright (c) 2015 Blackbird. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var textArray: NSMutableArray! = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.textArray.addObject("This is an amount of text.")
        self.textArray.addObject("This is an even larger amount of text. That should move to other lines of the label and make the cell grow. Crossing fingers.")
        
        self.textArray.addObject("This is an even larger amount of text. That should move to other lines of the label and make the cell grow. Crossing fingers. This is an even larger amount of text. That should move to other lines of the label and make the cell grow. Crossing fingers.")
        
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        //default table view height = 44.0
        self.tableView.estimatedRowHeight = 44.0
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.textArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        cell.textLabel?.text = self.textArray.objectAtIndex(indexPath.row) as? String
        
        return cell
    }


}

