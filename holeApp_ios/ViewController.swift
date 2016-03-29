//
//  ViewController.swift
//  holeApp_ios
//
//  Created by imam on 3/25/16.
//  Copyright © 2016 imam. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet
    var tableView: UITableView!
     var items: [String] = ["We", "Heart", "Swift"]
    
     let swiftBlogs = ["Ray Wenderlich", "NSHipster", "iOS Developer Tips", "Jameson Quave", "Natasha The Robot", "Coding Explorer", "That Thing In Swift", "Andrew Bancroft", "iAchieved.it", "Airspeed Velocity"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let nib = UINib(nibName: "DataTableViewCell", bundle: nil)
       // self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView.registerNib(nib, forCellReuseIdentifier: "cell")
        //(nib, forCellReuseIdentifier: "cell")
        
        // tableView.registerNib(nib, forCellReuseIdentifier: textCellIdentifier)
       // tableView.delegate = self
       // tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


 //   @IBAction func tb_satuAction(sender: AnyObject) {
  //      LoaderView.loadViewByName("tableviewme", uiview: self)
   // }
    
    
    



func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.items.count;
}

func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//    let cell : UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
    let cell : DataTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell")! as! DataTableViewCell
    
    cell.lb_1.text = String (indexPath.row)
    cell.lb_2.text = self.items[indexPath.row]

    
//    cell.textLabel?.text = self.items[indexPath.row]
    
    return cell
}

func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    print("You selected cell #\(indexPath.row)!")
}
}

