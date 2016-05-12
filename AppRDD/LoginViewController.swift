//
//  LoginViewController.swift
//  AppRDD
//
//  Created by Akram khalifa on 18/04/2016.
//  Copyright © 2016 Akram khalifa. All rights reserved.
//

import UIKit
import CoreData

class LoginViewController: UIViewController {
    
    var managedObjectContext: NSManagedObjectContext!
    
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        managedObjectContext = appDelegate.managedObjectContext
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func loginUser(sender: AnyObject) {
        
        let request = NSFetchRequest(entityName: "User")
        
        request.predicate = NSPredicate(format: "username = %@", usernameField.text!)
        request.predicate = NSPredicate(format: "password = %@", passwordField.text!)
        
        let moc = managedObjectontext
        
        do {
        
            let results = try moc.executeFetchRequest(request) as! [User]
        
            for result in results {
                print(result.username)
        
            }
        
        }
        catch {
            fatalError("Error in Fetch data")
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
