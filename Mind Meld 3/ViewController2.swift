//
//  ViewController.swift
//  Mind Meld 2
//
//  Created by Louis Konig on 1/1/15.
//  Copyright (c) 2015 Louis Konig. All rights reserved.
//

import UIKit

class ViewController2: UITableViewController {

    var candies = [Candy]()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        self.candies = [Candy(name: "Start a New Game with Michael Hal"), Candy(name: "Resume Game with Josh Burstein"), Candy(name: "Start a new Game with Nancy Adele")]
        
         self.tableView.reloadData()
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.candies.count
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationItem.setHidesBackButton(true, animated: false)
        let logOutButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Stop, target: self, action: Selector("logOut"))
        self.navigationItem.setLeftBarButtonItem(logOutButton, animated: false)
    }
    
    func logOut() {
        PFUser.logOut()
        self.navigationController?.popToRootViewControllerAnimated(true)
        
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        var candy : Candy
        candy = candies[indexPath.row]
        cell.textLabel?.text = candy.name
        return cell
    }
    
  
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "gameDetail") {
            var svc = segue.destinationViewController as ViewController3
            let indexPath = self.tableView.indexPathForSelectedRow()
            let theSelectedRow = candies[indexPath!.row]
            let theDestination = segue.destinationViewController as ViewController3
            theDestination.toPass = theSelectedRow.name
            
            
        }
    }

    
    
}

