//
//  BanksListResourcesData+CoreDataProperties.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//
//

import Foundation
import CoreData


extension BanksListResourcesData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BanksListResourcesData> {
        return NSFetchRequest<BanksListResourcesData>(entityName: "BanksListResourcesData")
    }

    @NSManaged public var country_code: String?
    @NSManaged public var parent_banks: NSSet?

}

// MARK: Generated accessors for parent_banks
extension BanksListResourcesData {

    @objc(addParent_banksObject:)
    @NSManaged public func addToParent_banks(_ value: ParentBanksData)

    @objc(removeParent_banksObject:)
    @NSManaged public func removeFromParent_banks(_ value: ParentBanksData)

    @objc(addParent_banks:)
    @NSManaged public func addToParent_banks(_ values: NSSet)

    @objc(removeParent_banks:)
    @NSManaged public func removeFromParent_banks(_ values: NSSet)

}

extension BanksListResourcesData : Identifiable {

}
