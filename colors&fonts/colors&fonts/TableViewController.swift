//
//  TableViewController.swift
//  colors&fonts
//
//  Created by WuYueFeng on 2017/5/9.
//  Copyright © 2017年 WuYueFeng. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var fontArray = UIFont.familyNames
    
    var colors = ["水浅葱":UIColor.水浅葱(),
                  "青磁":UIColor.青磁(),
                  "一斥染":UIColor.一斥染(),
                  "猩猩绯":UIColor.猩猩绯(),
                  "花叶":UIColor.花叶(),
                  "白绿":UIColor.白绿(),
                  "沈香茶":UIColor.沈香茶(),
                  "照柿":UIColor.照柿(),
                  "蓝海松茶":UIColor.蓝海松茶(),
                  "青竹":UIColor.青竹(),
                  "ビロ一ド":UIColor.ビロ一ド(),
                  "琉璃":UIColor.琉璃(),
                  "群青":UIColor.群青(),
                  "似紫":UIColor.似紫(),
                  "紫鸾":UIColor.紫鸾(),
                  "踯躅":UIColor.踯躅(),
                  "菖蒲":UIColor.菖蒲(),
                  "kachi":UIColor.kachi(),
                  "白群":UIColor.白群(),
                  "御召茶":UIColor.御召茶(),
                  "梅鼠":UIColor.梅鼠()
    ]

    var allColorName = [String]()
    
    var fonts = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        allColorName = Array(colors.keys)
        
        fonts = fontArray.count >= colors.count

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
        print(fontArray)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (fontArray.count >= colors.count) ? fontArray.count : colors.count
    }

    
    var fontindex = 0
    var colorindex = 0
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        fontindex = indexPath.row
        colorindex = indexPath.row
        
        if fonts {
            if indexPath.row >= colors.count {
                colorindex = indexPath.row % colors.count
            }
        }else{
            if indexPath.row >= fontArray.count {
                fontindex = indexPath.row % fontArray.count
            }
        }
        cell.fontname.text = fontArray[fontindex]
        cell.fontname2.text = fontArray[fontindex]
        cell.fontname2.font = UIFont.init(name: fontArray[fontindex], size: 16)
        cell.contentView.backgroundColor = colors[allColorName[colorindex]]
        cell.nameLabel.text = allColorName[colorindex]
        
        return cell
    }

}
