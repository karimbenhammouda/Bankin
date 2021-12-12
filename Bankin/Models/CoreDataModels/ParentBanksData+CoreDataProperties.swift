//
//  ParentBanksData+CoreDataProperties.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//
//

import Foundation
import CoreData


extension ParentBanksData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ParentBanksData> {
        return NSFetchRequest<ParentBanksData>(entityName: "ParentBanksData")
    }

    @NSManaged public var name: String?
    @NSManaged public var logo_url: String?
    @NSManaged public var is_highlighted: Bool
    @NSManaged public var display_order: Int64
    @NSManaged public var banks: NSSet?

}

// MARK: Generated accessors for banks
extension ParentBanksData {

    @objc(addBanksObject:)
    @NSManaged public func addToBanks(_ value: BanksData)

    @objc(removeBanksObject:)
    @NSManaged public func removeFromBanks(_ value: BanksData)

    @objc(addBanks:)
    @NSManaged public func addToBanks(_ values: NSSet)

    @objc(removeBanks:)
    @NSManaged public func removeFromBanks(_ values: NSSet)

}

extension ParentBanksData : Identifiable {

}
