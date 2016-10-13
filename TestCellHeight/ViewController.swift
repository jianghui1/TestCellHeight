//
//  ViewController.swift
//  TestCellHeight
//
//  Created by ys on 16/1/11.
//  Copyright © 2016年 ys. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let dataArray: NSMutableArray = NSMutableArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataArray .addObjectsFromArray(["ldkjfl", "jodsfjoejfionaonsajfoasjofjaojfioeasjef", "slnfjaskjfasjfk", "heiwhfiahsnfnsaknfsanfojasofjioefoanfolanflnsaniebgaejfoijeioaijfioenafjeaofjoeajfo;eajfoejofjeofjoejfoijofw"])
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: Mycell = tableView.dequeueReusableCellWithIdentifier("cell")  as! Mycell
        cell.getContent(self.dataArray[indexPath.row] as! String)
        return cell
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let cell = self.tableView(tableView, cellForRowAtIndexPath: indexPath)
        return cell.frame.size.height
    }
    
}

