//
//  Item+CoreDataProperties.swift
//  AppRDD
//
//  Created by Akram khalifa on 18/04/2016.
//  Copyright © 2016 Akram khalifa. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Item {

    @NSManaged var body: String?
    @NSManaged var user: NSManagedObject?

}
