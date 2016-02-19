//
//  DetailViewController.swift
//  SpotlightDemo
//
//  Created by yangyue on 16/2/19.
//  Copyright © 2016年 com.yy.www. All rights reserved.
//

import UIKit
import CoreSpotlight
class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.saveData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func saveData(){
    var searchableItems = [CSSearchableItem]()
        let attributeSet =       CSSearchableItemAttributeSet(itemContentType: "views" as String)
        attributeSet.title = "施华洛世奇"
        attributeSet.contentDescription =  "宫崎骏"
     
        let image :UIImage! = UIImage(named: "tommy.png")
        attributeSet.thumbnailData = UIImagePNGRepresentation(image)
        
        let item = CSSearchableItem(uniqueIdentifier:attributeSet.title, domainIdentifier: "com.yy.spotlight.demo", attributeSet: attributeSet)
        
        searchableItems .append(item)
        
        CSSearchableIndex.defaultSearchableIndex().indexSearchableItems(searchableItems) { error -> Void in
            if error != nil{
                print(error?.localizedDescription)
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
