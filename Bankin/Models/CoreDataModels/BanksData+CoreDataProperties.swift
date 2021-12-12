//
//  BanksData+CoreDataProperties.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 10/12/2021.
//
//

import Foundation
import CoreData


extension BanksData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BanksData> {
        return NSFetchRequest<BanksData>(entityName: "BanksData")
    }

    @NSManaged public var id: Int64
    @NSManaged public var resource_uri: String?
    @NSManaged public var resource_type: String?
    @NSManaged public var name: String?
    @NSManaged public var country_code: String?
    @NSManaged public var automatic_refresh: Bool
    @NSManaged public var primary_color: String?
    @NSManaged public var secondary_color: String?
    @NSManaged public var logo_url: String?
    @NSManaged public var deeplink_ios: String?
    @NSManaged public var deeplink_android: String?
    @NSManaged public var transfer_enabled: Bool
    @NSManaged public var authentication_type: String?
    @NSManaged public var parent_name: String?
    @NSManaged public var payment_enabled: Bool
    @NSManaged public var capabilities: [String]?
    @NSManaged public var form: NSSet?

}

// MARK: Generated accessors for form
extension BanksData {

    @objc(addFormObject:)
    @NSManaged public func addToForm(_ value: BanksFormData)

    @objc(removeFormObject:)
    @NSManaged public func removeFromForm(_ value: BanksFormData)

    @objc(addForm:)
    @NSManaged public func addToForm(_ values: NSSet)

    @objc(removeForm:)
    @NSManaged public func removeFromForm(_ values: NSSet)

}

extension BanksData : Identifiable {

}
