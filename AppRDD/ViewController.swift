//
//  ViewController.swift
//  AppRDD
//
//  Created by Akram khalifa on 18/04/2016.
//  Copyright © 2016 Akram khalifa. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var managedObjectContext: NSManagedObjectContext!

    
    @IBOutlet weak var usernameField: UITextField!
    
    
    @IBOutlet weak var emailField: UITextField!
    
    
    @IBOutlet weak var passwordField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        managedObjectContext = appDelegate.managedObjectContext
        
               
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    
    @IBAction func userRegister(sender: AnyObject) {
        
//        
//        let user = NSEntityDescription.insertNewObjectForEntityForName("User", inManagedObjectContext: self.managedObjectContext!) as! User
//        
//        user.username = usernameField.text!
//        user.email = emailField.text!
//        user.password = passwordField.text!
//        
//        do {
//            try managedObjectContext.save()
//            print("Saved Correctly")
//        }
//        
//        catch {
//            fatalError("Error in ENtity")
//        }
//
        
//        let request = NSFetchRequest(entityName: "User")
//        
//        let moc = managedObjectContext
//        
//        do {
//            
//            let results = try moc.executeFetchRequest(request) as! [User]
//            
//            for result in results {
//               print(result.username)
//                
//                
//            }
//            
//        }
//        catch {
//            fatalError("Error in Fetch data")
//        }
//
        
    }
    
    func allItems() -> [Item]  {
        
        let request = NSFetchRequest(entityName: "Item")
        
        let moc = managedObjectContext
        
        do {
        
            let results = try moc.executeFetchRequest(request) as! [Item]
        
            return results
        }
        catch {
            fatalError("Error in Fetch data")
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
     //   let items = segue.destinationViewController as! ItemTableViewController
        
       // items.items = allItems()
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

