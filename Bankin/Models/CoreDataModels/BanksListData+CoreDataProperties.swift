//
//  BanksListData+CoreDataProperties.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 10/12/2021.
//
//

import Foundation
import CoreData


extension BanksListData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BanksListData> {
        return NSFetchRequest<BanksListData>(entityName: "BanksListData")
    }

    @NSManaged public var resources: NSSet?
    @NSManaged public var pagination: BanksListPaginationData?

}

// MARK: Generated accessors for resources
extension BanksListData {

    @objc(addResourcesObject:)
    @NSManaged public func addToResources(_ value: BanksListResourcesData)

    @objc(removeResourcesObject:)
    @NSManaged public func removeFromResources(_ value: BanksListResourcesData)

    @objc(addResources:)
    @NSManaged public func addToResources(_ values: NSSet)

    @objc(removeResources:)
    @NSManaged public func removeFromResources(_ values: NSSet)

}

extension BanksListData : Identifiable {

}
