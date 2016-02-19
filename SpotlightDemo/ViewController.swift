//
//  ViewController.swift
//  SpotlightDemo
//
//  Created by yangyue on 16/2/19.
//  Copyright © 2016年 com.yy.www. All rights reserved.
//

import UIKit

class ViewController: UITableViewController  {

    var listVideos :NSMutableArray!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identify :String = "CustomCell";
  
        let cell :CustomTableViewCell = tableView.dequeueReusableCellWithIdentifier(identify) as! CustomTableViewCell

        
        cell.img = UIImageView(image: UIImage(named: "tommy"))
        
        cell.lbl.text = String(indexPath.row)
        
        return cell
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
 
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return  5
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detailViewPush"{
        
           
        
        }
    }
}

