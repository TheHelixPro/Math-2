//
//  Task+CoreDataProperties.swift
//  Math
//
//  Created by D_Key on 07.08.2021.
//
//

import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var color1: String?
    @NSManaged public var color2: String?
    @NSManaged public var img: String?
    @NSManaged public var isLock: Bool
    @NSManaged public var isMain: Bool
    @NSManaged public var title: String?
    @NSManaged public var levels: NSSet?

}

// MARK: Generated accessors for levels
extension Task {

    @objc(addLevelsObject:)
    @NSManaged public func addToLevels(_ value: Level)

    @objc(removeLevelsObject:)
    @NSManaged public func removeFromLevels(_ value: Level)

    @objc(addLevels:)
    @NSManaged public func addToLevels(_ values: NSSet)

    @objc(removeLevels:)
    @NSManaged public func removeFromLevels(_ values: NSSet)

}

extension Task : Identifiable {

}
