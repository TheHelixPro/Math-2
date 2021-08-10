//
//  Level+CoreDataProperties.swift
//  Math
//
//  Created by D_Key on 07.08.2021.
//
//

import Foundation
import CoreData


extension Level {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Level> {
        return NSFetchRequest<Level>(entityName: "Level")
    }

    @NSManaged public var id: Int16
    @NSManaged public var isLock: Bool
    @NSManaged public var stars: Int16
    @NSManaged public var task: Task?

}

extension Level : Identifiable {

}
